# lets make a comprehensive profile.
# one that takes into account puppet dev
class profiles::puppet(
  $testtools = false,
  $server    = false,
){
  include ::puppet

  if $server {
    package{'r10k':
      ensure   => present,
      provider => 'puppet_gem'
    }
  }
  if $testtools {
    package{['puppet-lint','beaker']:
      ensure   => present,
      provider => 'puppet_gem'
    }
  }
}
