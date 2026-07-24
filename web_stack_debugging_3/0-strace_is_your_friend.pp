# Fixes a WordPress 500 error caused by a typo in wp-settings.php
exec { 'fix-wordpress':
  command => 'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/" /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/:/usr/bin/',
}
