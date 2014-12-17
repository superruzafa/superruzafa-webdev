class webdev::php::fpm {
  package { 'php5-fpm':
    ensure => 'present',
  }

  file { '/etc/php5/fpm/pool.d/www.conf':
    ensure => 'absent',
    require => Package['php5-fpm'],
    before => Service['php5-fpm'],
  }

  service { 'php5-fpm':
    ensure => 'running',
    enable => true,
    require => Package['php5-fpm'],
  }
}
