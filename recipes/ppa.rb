#
# Cookbook Name:: hdeploy
# Recipe:: ppa
#
# Copyright (c) 2016 Nghiem Ba Hieu, All Rights Reserved.
apt_repository 'ondrej-php' do
	uri 	node[:ppa][:ondrej_php]
	distribution node[:lsb][:codename]
	components ['main']
	keyserver 	'keyserver.ubuntu.com'
	key 	'E5267A6C'
end
