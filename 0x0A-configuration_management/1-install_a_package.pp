# Install flask from pip3
exec {
  'pip3 install flask==2.1.0':
  command  => 'pip3 install flask==2.1.0',
  cwd      => '/usr/bin',
  path     => ['/usr/bin', '/usr/sbin',],
}
