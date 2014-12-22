class webdev::php::ext (
  $adodb                  = undef,
  $apcu                   = undef,
  $cgi                    = undef,
  $common                 = undef,
  $curl                   = undef,
  $dbg                    = undef,
  $dev                    = undef,
  $enchant                = undef,
  $exactimage             = undef,
  $gdcm                   = undef,
  $gd                     = undef,
  $gearman                = undef,
  $geoip                  = undef,
  $gmp                    = undef,
  $gnupg                  = undef,
  $imagick                = undef,
  $imap                   = undef,
  $interbase              = undef,
  $intl                   = undef,
  $json                   = undef,
  $lasso                  = undef,
  $ldap                   = undef,
  $librdf                 = undef,
  $mapscript              = undef,
  $mcrypt                 = undef,
  $memcached              = undef,
  $memcache               = undef,
  $midgard2               = undef,
  $ming                   = undef,
  $mongo                  = undef,
  $msgpack                = undef,
  $mysql                  = undef,
  $mysqlnd                = undef,
  $mysqlnd_ms             = undef,
  $oauth                  = undef,
  $odbc                   = undef,
  $pgsql                  = undef,
  $pinba                  = undef,
  $ps                     = undef,
  $pspell                 = undef,
  $radius                 = undef,
  $readline               = undef,
  $recode                 = undef,
  $redis                  = undef,
  $remctl                 = undef,
  $rrd                    = undef,
  $sasl                   = undef,
  $snmp                   = undef,
  $sqlite                 = undef,
  $stomp                  = undef,
  $svn                    = undef,
  $sybase                 = undef,
  $tidy                   = undef,
  $tokyo_tyrant           = undef,
  $vtkgdcm                = undef,
  $xcache                 = undef,
  $xdebug                 = undef,
  $xhprof                 = undef,
  $xmlrpc                 = undef,
  $xsl                    = undef,
) {
  if $adodb           != undef { package { 'php5-adodb':           ensure => $adodb, } }
  if $apcu            != undef { package { 'php5-apcu':            ensure => $apcu, } }
  if $cgi             != undef { package { 'php5-cgi':             ensure => $cgi, } }
  if $common          != undef { package { 'php5-common':          ensure => $common, } }
  if $curl            != undef { package { 'php5-curl':            ensure => $curl, } }
  if $dbg             != undef { package { 'php5-dbg':             ensure => $dbg, } }
  if $dev             != undef { package { 'php5-dev':             ensure => $dev, } }
  if $enchant         != undef { package { 'php5-enchant':         ensure => $enchant, } }
  if $exactimage      != undef { package { 'php5-exactimage':      ensure => $exactimage, } }
  if $gdcm            != undef { package { 'php5-gdcm':            ensure => $gdcm, } }
  if $gd              != undef { package { 'php5-gd':              ensure => $gd, } }
  if $gearman         != undef { package { 'php5-gearman':         ensure => $gearman, } }
  if $geoip           != undef { package { 'php5-geoip':           ensure => $geoip, } }
  if $gmp             != undef { package { 'php5-gmp':             ensure => $gmp, } }
  if $gnupg           != undef { package { 'php5-gnupg':           ensure => $gnupg, } }
  if $imagick         != undef { package { 'php5-imagick':         ensure => $imagick, } }
  if $imap            != undef { package { 'php5-imap':            ensure => $imap, } }
  if $interbase       != undef { package { 'php5-interbase':       ensure => $interbase, } }
  if $intl            != undef { package { 'php5-intl':            ensure => $intl, } }
  if $json            != undef { package { 'php5-json':            ensure => $json, } }
  if $lasso           != undef { package { 'php5-lasso':           ensure => $lasso, } }
  if $ldap            != undef { package { 'php5-ldap':            ensure => $ldap, } }
  if $librdf          != undef { package { 'php5-librdf':          ensure => $librdf, } }
  if $mapscript       != undef { package { 'php5-mapscript':       ensure => $mapscript, } }
  if $mcrypt          != undef { package { 'php5-mcrypt':          ensure => $mcrypt, } }
  if $memcached       != undef { package { 'php5-memcached':       ensure => $memcached, } }
  if $memcache        != undef { package { 'php5-memcache':        ensure => $memcache, } }
  if $midgard2        != undef { package { 'php5-midgard2':        ensure => $midgard2, } }
  if $ming            != undef { package { 'php5-ming':            ensure => $ming, } }
  if $mongo           != undef { package { 'php5-mongo':           ensure => $mongo, } }
  if $msgpack         != undef { package { 'php5-msgpack':         ensure => $msgpack, } }
  if $mysql           != undef { package { 'php5-mysql':           ensure => $mysql, } }
  if $mysqlnd         != undef { package { 'php5-mysqlnd':         ensure => $mysqlnd, } }
  if $mysqlnd_ms      != undef { package { 'php5-mysqlnd-ms':      ensure => $mysqlnd_ms, } }
  if $oauth           != undef { package { 'php5-oauth':           ensure => $oauth, } }
  if $odbc            != undef { package { 'php5-odbc':            ensure => $odbc, } }
  if $pgsql           != undef { package { 'php5-pgsql':           ensure => $pgsql, } }
  if $pinba           != undef { package { 'php5-pinba':           ensure => $pinba, } }
  if $ps              != undef { package { 'php5-ps':              ensure => $ps, } }
  if $pspell          != undef { package { 'php5-pspell':          ensure => $pspell, } }
  if $radius          != undef { package { 'php5-radius':          ensure => $radius, } }
  if $readline        != undef { package { 'php5-readline':        ensure => $readline, } }
  if $recode          != undef { package { 'php5-recode':          ensure => $recode, } }
  if $redis           != undef { package { 'php5-redis':           ensure => $redis, } }
  if $remctl          != undef { package { 'php5-remctl':          ensure => $remctl, } }
  if $rrd             != undef { package { 'php5-rrd':             ensure => $rrd, } }
  if $sasl            != undef { package { 'php5-sasl':            ensure => $sasl, } }
  if $snmp            != undef { package { 'php5-snmp':            ensure => $snmp, } }
  if $sqlite          != undef { package { 'php5-sqlite':          ensure => $sqlite, } }
  if $stomp           != undef { package { 'php5-stomp':           ensure => $stomp, } }
  if $svn             != undef { package { 'php5-svn':             ensure => $svn, } }
  if $sybase          != undef { package { 'php5-sybase':          ensure => $sybase, } }
  if $tidy            != undef { package { 'php5-tidy':            ensure => $tidy, } }
  if $tokyo_tyrant    != undef { package { 'php5-tokyo-tyrant':    ensure => $tokyo_tyrant, } }
  if $vtkgdcm         != undef { package { 'php5-vtkgdcm':         ensure => $vtkgdcm, } }
  if $xcache          != undef { package { 'php5-xcache':          ensure => $xcache, } }
  if $xdebug          != undef { package { 'php5-xdebug':          ensure => $xdebug, } }
  if $xhprof          != undef { package { 'php5-xhprof':          ensure => $xhprof, } }
  if $xmlrpc          != undef { package { 'php5-xmlrpc':          ensure => $xmlrpc, } }
  if $xsl             != undef { package { 'php5-xsl':             ensure => $xsl, } }
}
