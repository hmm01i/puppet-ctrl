#packages essential for gpg and smartcard. eg yubikey
class profiles::gpg {
  package{ ['gnupg2',
  'pcscd',
  'pcsc-tools',
  'scdaemon',
  'monkeysphere']:
    ensure => installed
  }

  service {'pcscd':
    ensure => enable
  }
}
