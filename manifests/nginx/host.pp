define webdev::nginx::host (
  $servername     = $title,
  $port           = 80,
  $root           = '/vagrant',
  $index          = 'index.php',
  $fastcgi_pass   = 'unix:/var/run/php5-fpm.sock',
  $fastcgi_index  = 'index.php',
  $template       = undef,
) {

  $source = "/etc/nginx/sites-available/$title"

  class { 'webdev::nginx::server': }

  $real_template = $template ? {
    undef   => 'webdev/nginx/default_host.erb',
    default => $template
  }

  file { $source:
    ensure => 'file',
    content => template($real_template),
    require => Package['nginx'],
    notify => Service['nginx']
  }

  file { "/etc/nginx/sites-enabled/$title":
    ensure => 'link',
    target => $source,
    require => File[$source],
    notify => Service['nginx']
  }
}
