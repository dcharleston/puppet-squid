# Class squid::verify_config
#
# Verifies Squid config

class squid::verify_config inherits squid {

  exec{'verify-squid-conf':
    path        => ['/usr/bin/','/usr/sbin','/bin'],
    command     => "squid -k parse || (echo '#INVALID CONFIG' >> $::squid::config && false)",
    refreshonly => true
  }

}
