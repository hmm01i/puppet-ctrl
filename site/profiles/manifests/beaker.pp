#profile to setup beaker for CI
class profiles::beaker(){
#Is there a beaker module?
#include ::beaker
package{'beaker':
  ensure   => installed,
  provider => 'puppet_gem'
}
}
