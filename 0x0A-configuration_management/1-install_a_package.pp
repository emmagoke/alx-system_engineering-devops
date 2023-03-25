# This file contain puppet code to install flask from pip3
# Requirements:
#    Install flask
#    Version must be 2.1.0

package{ 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  name     => 'flask',
}
