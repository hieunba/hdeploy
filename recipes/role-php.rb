#
# Cookbook Name:: hdeploy
# Recipe:: role-php
#
# Copyright (c) 2016 Nghiem Ba Hieu, All Rights Reserved.
dpkgs = ['php-cli', 'php-common', 'php-pear', 'php-dev', 'php-amqp', 'php-amqplib', 'php-bcmath']
dpkgs.each do |p|
	package p
end

template "/etc/php/7.0/cli/php.ini" do
	source "php.ini.erb"
	mode 644
	variables(
		:memory_limit => node[:php][:memorylimit],
		:log_errors => node[:php][:log_errors],
		:display_errors => node[:php][:display_errors],
		:enable_dl => node[:php][:enable_dl]
	)
end

service 'php7.0-fpm' do
	subscribes :reload, 'template[/etc/php/7.0/cli/php.ini]', :immediately
end
