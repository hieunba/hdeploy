default['hdeploy']['admin_user'] = 'radmin'
default['hdeploy']['admin_pass'] = 'radmin'
default['hdeploy']['admin_tags'] = 'administrator'
default['hdeploy']['ssh_ports'] = ['22', '55059']
default['hdeploy']['web_ports'] = ['80', '443']
default['hdeploy']['rabbitmq_ports'] = 15672
default['hdeploy']['memcached_ports'] = 11211
default['hdeploy']['network_sources'] = '138.201.228.224/27'
# php
default['php']['prefix'] = '/'
default['php']['tmpdir'] = '/tmp'
default['php']['save_handler'] = 'memcached'
default['php']['save_path'] = '127.0.0.1:11211'
default['php']['display_errors'] = 'Off'
default['php']['log_errors'] = 'On'
default['php']['maxexecutiontime'] = 60
default['php']['memorylimit'] = "512M"
default['php']['enable_dl'] = 'Off'
default['memcache']['allow_failover'] = 1
# ppa
default['ppa']['ondrej_php'] = 'http://ppa.launchpad.net/ondrej/php/ubuntu'
