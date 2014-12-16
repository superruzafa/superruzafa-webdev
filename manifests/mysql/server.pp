class webdev::mysql::server (
  $root_password
)
{
  package { 'mysql-server':
    ensure => 'present'
  }

  service { 'mysql':
    ensure => 'running',
    enable => true,
    require => Package['mysql-server'],
  }

  exec { 'Set the MySQL root\'s password':
    command => "mysqladmin -u root password $root_password",
    unless => "mysqladmin -u root -p$root_password status",
    require => Package['mysql-server'],
  }
}
