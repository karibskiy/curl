var fs = require('fs');
var page = require('webpage').create();
page.open('http://3gagarina.ru/index.php/218-kuba-arkhipelag-kajo-largo-chast-2', function(status) {
  console.log("Status: " + status);
  if(status === "success") {
   var file = fs.open('articles.txt', "w+");
    file.write(page.render);
    file.close();
    
  }
  phantom.exit();
});
