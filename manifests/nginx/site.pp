define webdev::nginx::site (
  $servername     = $title,
  $port           = 80,
  $root           = '/vagrant',
  $index          = 'index.php',
  $fastcgi_pass   = 'unix:/var/run/php5-fpm.sock',
  $fastcgi_index  = 'index.php',
  $content        = undef,
) {

  $source = "/etc/nginx/sites-available/$title"

  class { 'webdev::nginx::server': }

  $real_content = $content ? {
    undef   => template('webdev/nginx/default_site.erb'),
    default => $content
  }

  file { $source:
    ensure => 'file',
    content => $real_content,
    require => Package['nginx'],
  }

  file { "/etc/nginx/sites-enabled/$title":
    ensure => 'link',
    target => $source,
    require => File[$source],
    notify => Service['nginx']
  }
}
