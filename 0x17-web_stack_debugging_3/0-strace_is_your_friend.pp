# This puppet script replaces any .phpp in wp-settings.php with php

exec {'fix-wordpress':
  command  => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  provider => 'shell',
  path     => '/usr/bin/',
}
