class utilities {
  
  package { 'zip' :
    ensure => installed,
    require => Class['system-update'],
  }

  package { 'git' :
    ensure => installed,
    require => Class['system-update'],
  }

  package { 'vim' :
    ensure => installed,
    require => Class['system-update'],
  }

}