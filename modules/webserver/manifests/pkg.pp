class webserver::pkg {
  $pkgname = "httpd"
 package {"$pkgname":
  ensure => "present",

}
}
