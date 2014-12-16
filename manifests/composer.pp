class webdev::composer (
  $ensure,
  $install_dir    = '/usr/local/bin',
  $filename       = 'composer'
)
{
  $full_path = "$install_dir/$filename"

  if $ensure == 'present' {
    $label = "Installing composer to $full_path"
    $command = "wget -q -O - https://getcomposer.org/installer | php -- --quiet --install-dir=$install_dir --filename=$filename && chmod a+x $full_path"
  } elsif $ensure == 'absent' {
    $label = "Uninstalling composer from $full_path"
    $command = "rm -f $full_path"
  } else {
    fail("Wrong ensure attribute value: $ensure")
  }

  class { 'webdev::php::cli': }

  exec { $label:
    command => $command,
    require => Class['webdev::php::cli'],
  }
}
