class apache {
  
  # Apache packages
  package { 'apache2' :
    ensure => present,
    require => Class['system_update'],
  }

  # Apache service
  service { 'apache2' :
    ensure => 'running',
    require => Package['apache2'],
  }

  # Apache config
  
}