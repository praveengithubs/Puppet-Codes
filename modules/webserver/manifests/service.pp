class webserver::service {
  $services = "httpd"
service {"$services":
  ensure => "running",
  enable => "true",
}
}
