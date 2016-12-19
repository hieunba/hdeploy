#
# Cookbook Name:: hdeploy
# Recipe:: default
#
# Copyright (c) 2016 Nghiem Ba Hieu, All Rights Reserved.
include_recipe 'apt::default'
include_recipe 'hdeploy::ppa'
include_recipe 'hdeploy::role-php'
include_recipe 'hdeploy::rabbitmq_server'
include_recipe 'hdeploy::memcached'
include_recipe 'hdeploy::firewall'
