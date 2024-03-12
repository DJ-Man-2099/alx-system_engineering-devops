# Fix the nginx too many files error
exec { 'fix-nginx-limit':
  command => "sudo sed -i '/ULIMIT=\"-n 15\"/d' /etc/default/nginx && sudo service nginx restart",
  path    => '/usr/bin:/usr/sbin:/bin',
}
