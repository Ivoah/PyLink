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

form {
    margin: 50px;
}

input {
    border-color: #aaa;
    font-size: 18pt;
    padding: 15px;
}

#url {
    border-style: solid none solid solid;
    border-radius: 15px 0px 0px 15px;
    background: linear-gradient(#eee, #fff);
}

#submit {
    border-style: solid solid solid none;
    border-radius: 0px 15px 15px 0px;
    background: linear-gradient(#fff, #ddd);
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
        <form method="post">
            <input id="url" type="url" name="url"><input id="submit" type="submit" value="Shorten!">
        </form>
        %if short:
            <span>{{origin}}/{{short}}</span>
        %end
    </body>
<html>
