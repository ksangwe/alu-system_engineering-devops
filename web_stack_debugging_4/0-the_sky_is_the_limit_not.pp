# Increases the nginx open file limit so it can handle high concurrency
exec { 'fix-ulimit-for-nginx':
  command => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/:/usr/bin/',
}

exec { 'restart-nginx':
  command => 'service nginx restart',
  path    => '/usr/local/bin/:/bin/:/usr/sbin/:/sbin/:/usr/bin/',
  require => Exec['fix-ulimit-for-nginx'],
}
