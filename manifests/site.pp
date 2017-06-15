node default {
  include ::profiles::base
  if has_key($facts, 'role') {
    $effective_role=$facts['role']
    } else {
      $effective_role= 'base'
  }
    class { "::roles::${effective_role}": }
}
