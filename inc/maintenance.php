<?php
header('HTTP/1.1 503 Service Temporarily Unavailable');
header('Retry-After: 3600');
header(($_SERVER['SERVER_PROTOCOL'] ?? 'HTTP/1.0').' 503 Service Temporarily Unavailable',true,503);
header('Retry-After: 3600');
header('X-Powered-By:');
?><!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Huoltokatkos...</title>
<style type="text/css">
* {
  box-sizing: border-box;
}
html, body {
height: 100%;
margin: 0;
}
main {
height: 100%;
margin: 0 auto;
max-width: 700px;
padding: 30px;
display: table;
text-align: center;
}
main > * {
display: table-cell;
vertical-align: middle;
}

body
{
font: 20px Helvetica, sans-serif; color: #333;
}
@keyframes blink {50% { color: transparent }}
.dot { animation: 1s blink infinite }
.dot:nth-child(2) { animation-delay: 250ms }
.dot:nth-child(3) { animation-delay: 500ms }
</style>
</head>
<body>
<main>
<div>
<h1>Sivustolla tehdään parhaillaan huoltotöitä!<span class="dot">.</span><span class="dot">.</span><span class="dot">.</span></h1>
<p>Pahoittelut huoltotöistä johtuvasta haitasta.</p>
</div>
</main>
</body>
</html>