#
# Cookbook:: my_users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

users_manage "sysops" do
  group_id 2147
  action [ :remove, :create ]
end

users_manage "docker" do
  group_id 2148
  action [ :remove, :create ]
end

%w( sysadmin sudo ).each do |group|
  users_manage group do
    action [ :remove, :create ]
  end
end

node.default['authorization']['sudo']['groups'] = [ "sysadmin", "sysops", "sudo" ]
node.default['authorization']['sudo']['passwordless'] = true
include_recipe "sudo"
