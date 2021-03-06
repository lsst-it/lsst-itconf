# @summary
#  NI LabView 2018 requirement packages

class profile::core::ni_packages {
  $pre_packages = [
    'libstdc++',
  ]
  $packages = [
    'mlocate',
    'wget',
    'openssl-devel',
    'make',
    'gcc-c++',
    'bzip2-devel',
    'libffi-devel',
    'libXinerama',
    'mesa-libGL',
    'libstdc++.i686',
    'libXft',
  ]

  package { $pre_packages:
    ensure => 'present',
  }
  package { $packages:
    ensure  => 'present',
    require => Package[$pre_packages],
  }
}
