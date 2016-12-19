#
# Cookbook Name:: hdeploy
# Recipe:: rabbitmq_server
#
# Copyright (c) 2016 Nghiem Ba Hieu, All Rights Reserved.
include_recipe 'rabbitmq::default'

rabbitmq_plugin "rabbitmq_management" do
	action :enable
end

rabbitmq_user node[:hdeploy][:admin_user] do
	password node[:hdeploy][:admin_pass]
	action :add
end

rabbitmq_user node[:hdeploy][:admin_user] do
	tag node[:hdeploy][:admin_tags]
	action :set_tags
end

rabbitmq_user node[:hdeploy][:admin_user] do
	vhost "/"
	permissions ".* .* .*"
	action :set_permissions
end
