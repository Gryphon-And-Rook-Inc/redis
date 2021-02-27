#
# Cookbook:: redis
# Recipe:: install
#
# Copyright:: 2021, The Authors, All Rights Reserved.
execute 'update apt-get' do
  command 'sudo apt-get update && apt-get upgrade -y'
end

execute 'install redis-server' do
  command 'sudo apt-get install redis-server -y'
end

execute 'start redis' do
  command 'sudo service redis-server start'
end

execute 'autoboot redis enable' do
  command 'sudo update-rc.d redis-server enable'
end

execute 'autoboot redis enable' do
  command 'sudo update-rc.d redis-server defaults'
end