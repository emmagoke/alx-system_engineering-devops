# This puppet scripts installs Nginx and configures it
# This script also handles 301 redirect when querying /redirect_me.
include stdlib
# stdlib allows me to use file_line

package {'Nginx':
  ensure   => present,
  name     => 'nginx',
  provider => apt,
}

file {'index':
  ensure  => present,
  path    => '/var/www/html/index.nginx-debian.html',
  content => 'Hello World!',
}

file_line {'redirect_me':
  ensure => present,
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen [::]:80',
  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;'
}

service {'Nginx-start':
  ensure => running,
  name   => 'nginx'
}
