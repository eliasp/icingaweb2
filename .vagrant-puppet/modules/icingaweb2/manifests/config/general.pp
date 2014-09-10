define icingaweb2::config::general ($source, $replace = true) {
  include apache

  $path = "/etc/icingaweb/${name}.ini"
  file { $path:
    source  => "${source}${path}",
    owner   => 'apache',
    group   => 'apache',
    replace => $replace,
    require => Class['apache'],
  }
}
