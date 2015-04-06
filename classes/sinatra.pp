class sinatra {
	file {	'/data/sinatra/sinatra.tar':
		owner => root, group => root, mode => 0644,
		source => "puppet:///files/mysite/sinatra.tar",
	}
	exec { 'deploy.sh':
		command => "/data/deploy.sh",
		subscribe => [
			File['/data/sinatra/sinatra.tar'],
		],
		refreshonly => true,
	}
}
