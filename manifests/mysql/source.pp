define webdev::mysql::source (
  $file       = $title,
  $host       = 'localhost',
  $port       = 3306,
  $database,
  $user,
  $password,
) {

  $command = "mysql --host=$host --port=$port --user=$user --password=$password $database < $file"

  exec { "Executing queries from $file":
    command => $command,
    cwd     => dirname($file),
    require => [
      Webdev::Mysql::Db[$database],
      Webdev::Mysql::User[$user],
    ],
  }
}
