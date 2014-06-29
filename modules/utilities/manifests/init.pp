class utilities {
  
  package { 'zip' :
    ensure => installed,
    require => Class['system_update'],
  }

  package { 'git' :
    ensure => installed,
    require => Class['system_update'],
  }
  
  package { 'vim' :
    ensure => installed,
    require => Class['system_update'],
  }

}