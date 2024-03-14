# Fix the user too many files error
exec { 'fix-user-limit':
  command => "sudo sed -i '/holberton hard nofile 5/d;/holberton soft nofile 4/d' /etc/security/limits.conf",
  path    => '/usr/bin:/usr/sbin:/bin',
}
