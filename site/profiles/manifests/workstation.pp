class profiles::workstation {
  package { ['keepass2','dropbox']:
    ensure => 'installed'
  }
}
