# Fix apache error
# Change import in wp-settings.php file
# from require_once( ABSPATH . WPINC . '/class-wp-locale.phpp' );
# to require_once( ABSPATH . WPINC . '/class-wp-locale.php' );
exec { 'install-puppetlabs-stdlib':
  command => 'puppet module install puppetlabs-stdlib --version 4.25.1 --force',
  path    => ['/usr/bin', '/usr/sbin'],
}
file_line { 'fix-wordpress':
  path  => '/var/www/html/wp-settings.php',
  line  => 'require_once( ABSPATH . WPINC . \'/class-wp-locale.php\' );',
  match => '^require_once( ABSPATH . WPINC . \'/class-wp-locale.phpp\' );',
}
