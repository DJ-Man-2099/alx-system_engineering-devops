# Fix apache error
file_line { 'fix-wordpress':
  path  => '/var/www/html/wp-settings.php',
  line  => 'require_once( ABSPATH . WPINC . \'/class-wp-locale.php\' );',
  match => '^require_once( ABSPATH . WPINC . \'/class-wp-locale.phpp\' );',
}
