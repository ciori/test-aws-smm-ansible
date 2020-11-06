node default {
    
    package { 'rsyslog':
        ensure => installed,
    }

    service { 'rsyslog':
        name => rsyslog,
        ensure => running,
        enable => true,
    }
    
    file_line { 'rsyslog_conf':
      path => '/etc/rsyslog.conf',
      line => 'auth.*,authpriv.* @@hostname',
    }

}
