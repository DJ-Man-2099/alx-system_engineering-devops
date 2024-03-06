# Fix apache error
exec { 'install-puppetlabs-stdlib':
  command => 'puppet module install puppetlabs-stdlib',
  path    => ['/usr/bin', '/usr/sbin'],
}
file_line { 'fix-wordpress':
  path  => '/var/www/html/wp-settings.php',
  line  => 'require_once( ABSPATH . WPINC . \'/class-wp-locale.php\' );',
  match => '^require_once( ABSPATH . WPINC . \'/class-wp-locale.phpp\' );',
}
