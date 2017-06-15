#packages essential for gpg and smartcard. eg yubikey
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
