class nagios_tests::collect {
  resources { "nagios_service":
    purge => true,
  }

  file { "/etc/nagios":
    ensure => directory,
  }

  Nagios_service <<| tag == nagios_tests |>> {
    require => File["/etc/nagios"],
  }
}
