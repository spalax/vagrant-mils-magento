class puphpet::params {

  $xdebug_package = $::osfamily ? {
    'Debian' => 'php5-xdebug',
    'Redhat' => 'php-pecl-xdebug'
  }

  $apache_webroot_location = $::osfamily ? {
    'Debian' => '/var/www',
    'Redhat' => '/var/www'
  }

  $nginx_webroot_location = $::osfamily ? {
    'Debian' => '/var/www',
    'Redhat' => '/var/www'
  }

}
