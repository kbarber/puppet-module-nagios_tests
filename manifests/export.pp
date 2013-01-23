class nagios_tests::export {
  $hash = generate_hash(10000, $fqdn)
  @@nagios_service { $hash:
    ensure => present,
    tag => "nagios_tests",
  }
}
