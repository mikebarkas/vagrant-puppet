class php {

  # PHP packages
  package { 'php5' :
    ensure => present,
    require => Class['system_update'],
  }

  package { 'libapache2-mod-php5' :
    ensure => present,
    require => Class['system_update'],
  }

  package { 'php5-gd' :
    ensure => present,
    require => Class['system_update'],
  }

  package { 'php5-cli' :
    ensure => present,
    require => Class['system_update'],
  }

  package { 'php5-curl' :
    ensure => present,
    require => Class['system_update'],
  }

  # PHP config
  
}