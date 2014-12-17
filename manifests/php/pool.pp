define webdev::php::pool (
  $poolname             = $title,
  $user                 = 'www-data',
  $group                = 'www-data',
  $listen               = '/var/run/php5-fpm.sock',
  $listen_owner         = $user,
  $listen_group         = $group,
  $pm                   = 'dynamic',
  $pm_max_children      = 5,
  $pm_start_servers     = 2,
  $pm_min_spare_servers = 1,
  $pm_max_spare_servers = 3,
  $chdir                = '/',
  $env                  = {},
  $php_admin_value      = {},
  $php_admin_flag       = {},
  $php_flag             = {},
) {

  class { 'webdev::php::fpm': }

  file { "/etc/php5/fpm/pool.d/$poolname.conf":
    ensure => 'file',
    content => template('webdev/php/pool.conf.erb'),
    require => Package['php5-fpm'],
    notify => Service['php5-fpm'],
  }

}
