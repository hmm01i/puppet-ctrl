#base requirements
class profiles::base{
  include ::stdlib
  case $facts['os']['id'] {
    'Ubuntu', 'LinuxMint': {
      include ::apt
      apt::ppa { 'ppa:aacebedo/fasd':}
    }
     default: {}
  }
  #include ::profiles::puppet
  package {['zsh','tmux']:
    ensure => 'installed'
  }
  package {'fasd':
    ensure => 'installed'
  }
}
