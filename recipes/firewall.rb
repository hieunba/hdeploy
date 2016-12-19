#
# Cookbook Name:: hdeploy
# Recipe:: firewall
#
# Copyright (c) 2016 Nghiem Ba Hieu, All Rights Reserved.
include_recipe 'firewall::default'

firewall_rule "open SSH ports" do
	port node[:hdeploy][:ssh_ports]
end
firewall_rule "open Web ports" do
	port node[:hdeploy][:web_ports]
end
firewall_rule "open ports #{node[:hdeploy][:rabbitmq_ports]}" do
	port node[:hdeploy][:rabbitmq_ports]
end
firewall_rule "open ports #{node[:hdeploy][:memcached_ports]}" do
	source node[:hdeploy][:network_sources]
	port node[:hdeploy][:memcached_ports]
end
