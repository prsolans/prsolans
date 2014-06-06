exec { 'apt_update':
  command => 'apt-get update',
  path    => '/usr/bin'
}

class { 'git::install': }
class { 'apache2::install': }
class { 'php5::install': }
class { 'composer':
  command_name => 'composer',
  target_dir   => '/usr/local/bin'
}
class { 'curl': }
#class { 'mysql::install': }
#class { 'wordpress::install': }
#class { 'phpmyadmin::install': }
#class { 'phpqa::install': }
