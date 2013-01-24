class nagios_tests::export {
  $hash = generate_hash(1000, $fqdn)

  @@nagios_tests::nagios_service { $hash: 
    tag => 'nagios_tests',
  }
}
