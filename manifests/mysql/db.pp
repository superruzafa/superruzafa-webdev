define webdev::mysql::db(
  $database = $title,
  $ensure,
  $character_set = 'latin1',
  $collation = 'latin1_general_ci'
) {

  if $ensure == 'present' {
    $label = "Creating database $database"
    $sql = " \
CREATE DATABASE IF NOT EXISTS $database; \
ALTER DATABASE $database DEFAULT CHARACTER SET $character_set; \
ALTER DATABASE $database DEFAULT COLLATE $collation;"
  } elsif $ensure == 'absent' {
    $label = "Dropping database $database"
    $sql = "DROP DATABASE IF EXISTS $database;"
  } else {
    fail("Wrong ensure attribute value: $ensure")
  }

  exec { $label:
    command => "mysql -u root -p$webdev::mysql::server::root_password -e '$sql'",
    require => Class['webdev::mysql::server'],
  }
}
