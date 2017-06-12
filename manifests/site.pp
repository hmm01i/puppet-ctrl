node default {
  if $role {
    class { "::roles::${role}": }
  } else {
    notify { "no role set": }
  }
}
