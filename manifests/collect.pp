class nagios_tests::collect {
  resources { "nagios_service":
    purge => true,
  }

  file { "/etc/nagios":
    ensure => directory,
    purge => true,
    recurse => true,
  }

  Nagios_tests::Nagios_service <<| tag == nagios_tests |>> {
    require => File["/etc/nagios"],
  }
}
