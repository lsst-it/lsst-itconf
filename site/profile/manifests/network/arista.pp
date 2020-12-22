# @summary
#   Module for Arista Switches

class profile::network::arista{

  eos_vlan { '200':
      vlan_name => 'Test-Puppet-Vlan',
  }
  ->eos_switchport { 'Et10':
    mode        => access,
    access_vlan => 200,
  }
}
