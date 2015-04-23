<?PHP 
$ch = curl_init('http://php.su');
curl_exec($ch); // выполняем запрос curl - обращаемся к сервера php.su
curl_close($ch);
?>
