<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>
        <g:layoutTitle default="Grails"/>
    </title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="application.css"/>

    <style media="screen">
        html {
            position: relative;
            min-height: 100%;
        }

        body {
            margin-bottom: 60px; /* Margin bottom by footer height */
        }

        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            height: 60px; /* Set the fixed height of the footer here */
            line-height: 60px; /* Vertically center the text there */
            background-color: #f5f5f5;
        }
    </style>

    <g:layoutHead/>
</head>
<body>
    <g:render template="/layouts/header" />

    <div class="container">
        <g:layoutBody />
    </div>

    <g:render template="/layouts/footer" />

    <asset:javascript src="application.js"/>
</body>
</html>
