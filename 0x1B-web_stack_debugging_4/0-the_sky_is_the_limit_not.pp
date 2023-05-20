include stdlib
# This script increase the worker processes of nginx
# so as to able to handle more request
# Changes the ULIMIT in /etc/default/nginx from 15 to 4096

exec { 'ulimit to 4096':
  path    => '/bin',
  command => "sed -i 's/15/4096/' /etc/default/nginx",
}

exec { 'restart nginx' :
  command => '/usr/sbin/service nginx restart',
}
