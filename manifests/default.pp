Exec { path => [ "/bin/", "/sbin/", "/usr/bin/", "/usr/sbin" ] }

#
# Include Modules.
#
include system_update
include utilities
include apache
include php
include mysql
include composer
