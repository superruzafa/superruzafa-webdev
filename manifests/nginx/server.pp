class webdev::nginx::server {
  package { 'nginx':
    ensure => 'present',
  }

  $default_conf_files = [
    '/etc/nginx/sites-available/default',
    '/etc/nginx/sites-enabled/default',
  ]

  file { $default_conf_files:
    ensure => 'absent',
    require => Package['nginx'],
  }

  service { 'nginx':
    ensure => 'running',
    enable => true,
    require => Package['nginx'],
  }
}
