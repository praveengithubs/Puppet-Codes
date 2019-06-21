class mariadbmodule {
	package {"mariadb.x86_64":
		ensure => "present",
	}
	package {"mariadb-server.x86_64":
	  ensure  => "present",
	  require => Package["mariadb.x86_64"],
	}
	file {"/etc/my.cnf.d/server.cnf":
	  ensure => "present",
	}
	service {"mariadb":
	  ensure   => "running",
	  enable   => "true",
	  notify   => File["/etc/my.cnf.d/server.cnf"],
	}
}
      
