<html>
    <head>
        <title>Ivoah.net URL shortener</title>
        <style>
            body {
                font-family: sans-serif;
                text-align: center;
                background-color: #89cff0;
            }

            h1 {
                color: #333;
            }

            table, th, td {
                border: 1px solid black;
            }

            table {
                margin: auto;
            }

            th, td {
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <h1>Ivoah.net URL shortener</h1>
        <table>
            <tr><th>Short-code</th><th>Destination</th><th>Created</th><th>Stats</th></tr>
            %for url in urls:
                <tr><td>{{url}}</td><td><a href="{{urls[url]['url']}}">{{urls[url]['url']}}</a></td><td>{{urls[url]['created'].humanize()}}</td><td><a href=/stats/{{url}}>stats</a></td></tr>
            %end
        </table>
    </body>
<html>
