class mysite {
	file {	'/etc/httpd/conf.d/mysite.conf':
		owner => root, group => root, mode => 0644,
		source => "puppet:///files/mysite/mysite.conf",
		notify => Service['httpd'],
	}
}
