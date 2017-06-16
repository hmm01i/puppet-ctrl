class profiles::workstation {
  include ::profiles::gpg
  package { ['keepass2',
  'dropbox']:
    ensure => 'installed'
  }
}
