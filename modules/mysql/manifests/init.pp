class mysql {
  
  # MySQL packages
  package { 'mysql-server' :
    ensure => present,
    require => Class['system_update'],
  }

  package { 'libapache2-mod-auth-mysql' :
    ensure => present,
    require => Class['system_update'],
  }

  package { 'php5-mysql' :
    ensure => present,
    require => Class['system_update'],
  }

  # MySQL service
  service { 'mysql' :
    ensure => 'running',
    require => Package['mysql-server'],
  }

  # Mysql config
  
}