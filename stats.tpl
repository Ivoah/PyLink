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

span {
    border-style: solid;
    border-radius: 10px;
    padding: 25px;
    background-color: #5cb85c;
    border-color: #4ca84c;
}
</style>
    </head>
    <body>
        <h1>Ivoah.net URL shortener</h1>
        <table>
            <tr><th>Referer</th><th>User-Agent</th><th>Time</th></tr>
            %for hit in hits:
                <tr><td>{{hit['Referer']}}</td><td>{{hit['User-Agent']}}</td><td>{{hit['time'].humanize()}}</td></tr>
            %end
        </table>
    </body>
<html>
