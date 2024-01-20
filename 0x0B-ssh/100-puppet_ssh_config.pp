# append a Host to ssh_config configuration file
file_line{'Turn off passwd auth':
path => '/etc/ssh/ssh_config',
line => 'PasswordAuthentication no'
}

file_line{'Declare identity file':
path => '/etc/ssh/ssh_config',
line => 'IdentityFile ~/.ssh/school'
}
# file {
#   'create config':
#   path    => '/home/config',
#   ensure  => file,
#   content => 'Host "18.207.142.187"
#     HostName "18.207.142.187"
#     IdentityFile "~/.ssh/school"
#     BatchMode yes
#     IdentitiesOnly yes
#     PasswordAuthentication no
# ',
#   group   => 'root',
#   owner   => 'root'
# }

# file_line { 'add config to ssh_config':
#   path => '/etc/ssh/ssh_config',
#   line => 'Include /home/config',
#   ensure => present,
# }
