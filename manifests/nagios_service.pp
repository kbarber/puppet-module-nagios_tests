define nagios_tests::nagios_service () {
  $target = "/etc/nagios/nagios_service_${name}.cfg"

  file { $target:
    ensure => file,
    require => File["/etc/nagios"],
  }->
  nagios_service { $name:
    ensure => present,
    action_url => 'http://foo.com/bar/baz',
    active_checks_enabled => true,
    check_command => 'check_foo!a!b!c',
    check_freshness => false,
    contact_groups => ['bob'],
    contacts => ['nancy'],
    display_name => 'This is a test, yes it is',
    host_name => 'puppetdbclient1.vm',
    hostgroup_name => 'clients',
    icon_image => 'http://foo.com/bar/baz.png',
    icon_image_alt => 'picture of a thing',
    notes => 'Here are some notes about a test',
    notifications_enabled => 1,
    service_description => 'Description of the service',
    check_interval => 5,
    max_check_attempts => 5,
    notification_interval => 30,
    notification_period => '24x7',
    notification_options => 'w,c,r',
    retry_check_interval => 1,
    retry_interval => 1,
    target => $target,
  }
}
