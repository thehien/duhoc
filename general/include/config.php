<?php
	define ("DB_DBMS", 'mysql');
	define ("DB_HOST", 'localhost');
	define ("LOGINED_TRUE", '29092013');
	if($_SERVER['SERVER_NAME']=="localhost") {

		define ("DB_NAME", 'linkrica'); 
		define ("DB_USER", 'root'); 
		define ("DB_PWD", ''); 
		define ("URL_HOME","http://localhost/linkrica");
		define ("DOCUMENT_ROOT", $_SERVER['DOCUMENT_ROOT']. "/linkrica");
	} else {

		define ("DB_NAME", 'linkrica_db'); 
		define ("DB_USER", 'linkrica_db'); 
		define ("DB_PWD", 'Qazwsx123'); 
		define ("URL_HOME","http://linkrica.com");
		define ("DOCUMENT_ROOT", $_SERVER['DOCUMENT_ROOT']);
	}
	
	define ("URL_HOMEPAGE",URL_HOME."/");
	define ("URL_ADMINCMS",URL_HOMEPAGE."admincms/");
	define ("URL_ADMIN",URL_HOMEPAGE."admincms/indexcms.php");
	define ("URL_ADMIN_THEM",URL_HOMEPAGE."admincms/bootstrap/");
	define ("IMG_UPLOAD","../upload/");
	// the them vao
	define ("IMG_DELETE", "upload/delete/");
	define ("IMG_IMG", "upload/img/");
	define ("BG_UPLOAD", "upload/background/");
	define ("GALLERY_UPLOAD", "upload/gallery/");
	define ("AVATAR_UPLOAD", "upload/avatar/");
	define ("CV_UPLOAD", "upload/cv/");
	define ("IMG_IMG_FILE", "upload/products/");
	define ("IMG_TRANSLATER", "upload/translater");
	define ("IMG_THUMBS", "upload/thumbs");
	define ("PREVIEW_FILE", "load/download/");
	define ("PREVIEW_IMG_FILE", "load/images/");
	define ("TRANS_UPLOAD", "upload/trans/");
	
	//Facebook App Details
	define('FB_APP_ID', '553991211603806');
	define('FB_APP_SECRET', 'e921137fa0ffb8653c9a5c3490f1f627');
	define('FB_REDIRECT_URI', 'http://linkrica.com/');

	//Google App Details
	define('GOOGLE_OAUTH_CLIENT_ID', '967573170361-f4he10onajt68p3q4c7q2vg7t461ikt1.apps.googleusercontent.com');
	define('GOOGLE_OAUTH_CLIENT_SECRET', 'W2Jmw5257KCdtjGH3QzkfL9P');
	define('GOOGLE_OAUTH_REDIRECT_URI', 'http://linkrica.com');

?>