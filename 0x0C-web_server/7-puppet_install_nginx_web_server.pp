include stdlib
# This puppet scripts installs Nginx and configures it
# This script also handles 301 redirect when querying /redirect_me.

# stdlib allows me to use file_line

package {'Nginx':
  ensure   => installed,
}
#  name     => 'nginx',
#  provider => 'apt',
#}

include nginx

class { 'nginx':
  manage_repo    => true,
  package_source => 'nginx-stable',
}

ngnx::resource::server { '35.175.135.243':
  listen_port      => 80,
  www_root         => '/var/www/html',
  vhost_cfg_append => { 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;' }
}

file {'index':
  ensure  => present,
  path    => '/var/www/html/index.nginx-debian.html',
  content => 'Hello World!',
}

# file_line {'redirect_me':
#  ensure => present,
#  path   => '/etc/nginx/sites-available/default',
#  after  => 'listen [::]:80',
#  line   => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
#} 

service {'Nginx-start':
  ensure     => running,
  hasrestart => true,
  require    => Package['Nginx'],
}
