# This file create a file in /tmp. With the follwing values
# path is /tmp/school
# permission is 0744
# owner is www-data
# group is www-data
# contains I love Puppet
file{ 'school':
  ensure  => 'file',
  path    => '/tmp/school',
  content => 'I love Puppet',
  owner   => 'www-data',
  mode    => '0744',
  group   => 'www-data',
}
