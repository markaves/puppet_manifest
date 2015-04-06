class deb_transmission {
        package { 'transmission':
                name => "transmission",
                ensure => installed,
        }
        package { 'transmission-daemon':
                name => "transmission-daemon",
                ensure => installed,
        }
        package { 'transmission-cli':
                name => "transmission-cli",
                ensure => installed,
        }
        service { 'transmission-daemon':
                ensure => running,
                hasstatus => true,
                hasrestart => true,
        }

}
