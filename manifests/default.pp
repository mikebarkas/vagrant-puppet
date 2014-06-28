#node 'dev.local' {

#  exec { 'apt-update':
#    command => '/usr/bin/apt-get update'
#  }

#}

package { 'zip' :
  ensure => installed,
}

package { 'git' :
  ensure => installed,
}