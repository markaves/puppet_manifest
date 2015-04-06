class apache {
        package { 'httpd':
                name => "httpd",
                ensure => installed,
                allow_virtual => true
        }
	service { 'httpd':
		ensure => running,
		hasstatus => true,
		hasrestart => true,
	}
}
