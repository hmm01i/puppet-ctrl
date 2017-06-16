#base requirements
class profiles::base{
  include ::stdlib
  case $facts['os']['name'] {
    'Ubuntu', 'LinuxMint': {
      include ::profiles::ppa
      include ::apt
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
