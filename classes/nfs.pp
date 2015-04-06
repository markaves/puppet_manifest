class nfs {
        package { 'nfs-common':
                name => "nfs-common",
                ensure => installed,
        }

}
