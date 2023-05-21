# This script increase the worker processes of nginx
# so as to able to handle more request
# Changes the ULIMIT in /etc/default/nginx from 15 to 4096

exec { 'set ulimit to 4096 and restart nginx':
  command  => "sed -i 's/15/4096/' /etc/default/nginx; service nginx restart",
  provider => shell,
}
