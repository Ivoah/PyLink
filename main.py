import arrow
import string
import random
from bottle import *

try:
    os.chdir(os.path.dirname(__file__))
except FileNotFoundError:
    pass

urls = {}

@get('/')
def main():
    return template('main.tpl')

@get('/favicon.ico')
def favicon():
    return

@get('/<short>')
def short(short):
    if short in urls:
        urls[short]['hits'].append({
            'Referer': request.headers.get('Referer'),
            'User-Agent': request.headers.get('User-Agent'),
            'time': arrow.now()
        })
        redirect(urls[short]['url'])
    else:
        abort(404, 'bad link')

@get('/stats/<short>')
def stats(short):
    if short in urls:
        return template('stats.tpl', hits = urls[short]['hits'])
    else:
        abort(404, 'bad link')

@get('/urls')
def get_urls():
    return template('urls.tpl', urls = urls)

@post('/')
def shorten():
    url = request.forms.get('url')
    if not url: return template('main.tpl', error = 'Please enter a URL')
    short = ''.join(random.choice(string.ascii_letters) for i in range(10))
    urls[short] = {
        'url': url,
        'hits': [],
        'created': arrow.now()
    }
    return template('main.tpl', origin = request.headers.get('origin'), short = short)

application = default_app()

if __name__ == '__main__':
    run(app = application, host = '0.0.0.0', port = 8080, debug = True, reloader = True)
