# This setups up ruby and requirements
# stuch as gem (and bundler?) 
class profiles::ruby(
  $gem_version = installed,
  $devtools    = false
){
  include ::stdlib
  package{'rubygems':
    ensure => $gem_version,
  }
  if $devtools {
    package{'rvm':
      ensure   => installed,
      provider => 'gem',
      require  => Package['rubygems']
    }
  }
}
