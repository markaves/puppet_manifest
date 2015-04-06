import 'classes/*.pp'

class toolbox {
        file {  '/usr/local/sbin/puppetsimple.sh':
                owner => root, group => root, mode =>0755,
                content => "#!/bin/sh\npuppet agent --onetime --no-daemonize --onetime --verbose $1\n",
        }
}

node 'client.markaves.com' {
        include toolbox
        include apache
	include mysite
	include sinatra
}

node 'cayli.markaves.com' {
	include toolbox
	include deb_transmission
	include nfs
}
