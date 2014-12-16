define webdev::mysql::user (
  $username    = $title,
  $ensure,
  $password    = undef,
  $database,
  $host        = 'localhost',
  $privileges  = undef,
)
{
  if $ensure == 'present' {

    if $password == undef {
      fail("Password required for user $username@$host")
    }

    if $privileges != undef {
      $str_privileges = join(any2array($privileges), ',')
    } elsif $username =~ /a$/ {
      $str_privileges = 'CREATE,ALTER,INDEX,DROP,SELECT,INSERT,UPDATE,DELETE'
    } elsif $username =~ /w$/ {
      $str_privileges = 'SELECT,INSERT,UPDATE,DELETE'
    } elsif $username =~ /r$/ {
      $str_privileges = 'SELECT'
    } else {
      fail("Cannot detect privileges for user $username@$host")
    }

    $label = "Creating user $username@$host"
    $sql = " \
      GRANT USAGE ON *.* TO '$username'@'$host';
      DROP USER '$username'@'$host'; \
      CREATE USER '$username'@'$host' IDENTIFIED BY '$password'; \
      GRANT $str_privileges ON $database.* TO '$username'@'$host';"
  } elsif $ensure == 'absent' {
    $label = "Dropping user $username@$host"
    $sql = " \
      GRANT USAGE ON *.* TO '$username'@'$host';
      DROP USER '$username'@'$host';"
  } else {
    fail("Wrong ensure attribute value: $ensure")
  }

  exec { $label:
    command => "mysql -u root -p$webdev::mysql::server::root_password -e \"$sql\"",
    require => Webdev::Mysql::Db[$database],
  }
}
