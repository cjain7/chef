#
# Cookbook:: my_users
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

users_manage "sysops" do
    group_id 2147
    action [ :remove, :create ]
end
