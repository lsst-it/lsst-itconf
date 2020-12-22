# @summary
#   Module for Arista Switches

class profile::network::arista{
  eos_vlan { '100':
    ensure    => 'present',
    enable    => 'true',
    vlan_name => 'TEST_VLAN_100',
  }
  eos_vlan { '101':
    ensure    => 'present',
    enable    => 'true',
    vlan_name => 'TEST_VLAN_101',
  }
}
