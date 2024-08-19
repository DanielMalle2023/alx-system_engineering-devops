# a manifest that fixes server error on a Wordpress Apache server

exec {'fix_apache':
  command => "sed -Ei 's/.phpp/.php/g' /var/www/html/wp-settings.php",
  path    => ['/bin/', '/usr/sbin/', '/usr/bin'],
}
