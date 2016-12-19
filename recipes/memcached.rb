#
# Cookbook Name:: hdeploy-0.1.1
# Recipe:: memcached
#
# Copyright (c) 2016 Nghiem Ba Hieu, All Rights Reserved.
include_recipe 'memcached::default'

dpkgs = ['php-memcached']
dpkgs.each do |p|
	package p
end

redundancy_sessions = node[:php][:save_path].split(",").count + 1

template '/etc/php/7.0/mods-available/memcache.ini' do
	source 'memcache.ini.erb'
	mode 644
	variables(
		:session_redundancy => redundancy_sessions,
		:allow_failover => node[:memcache][:allow_failover]
	)
end

memcached_instance 'memcached' do
	port node[:hdeploy][:memcached_ports]
	memory 128
end

