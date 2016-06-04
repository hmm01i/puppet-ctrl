class profiles::mineos(
){
  include ::nodejs
  include ::git
  include ::mineos
  Class['::nodejs']
  -> Class['::git']
  -> Class['::mineos']
}
