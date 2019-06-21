class webserver::file {
  $files = "/var/www/html/index.html"
file {"$files":
  ensure => "present",
}
}

