class profiles::ppa (){

      apt::ppa { ['ppa:aacebedo/fasd',
                  'ppa:ansible/ansible']:
        options => '-y',
        before  => Package['fasd']
      }

}
