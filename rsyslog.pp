node default {
    
    package { 'rsyslog':
        ensure => installed,
    }

    service { 'rsyslog':
        name => rsyslog,
        ensure => running,
        enable => true,
    }

}
