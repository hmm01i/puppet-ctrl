#base requirements
class profiles::base{
  include ::stdlib

  #include ::profiles::puppet
  package {['zsh','tmux']:
    ensure => 'installed'
  }
}
