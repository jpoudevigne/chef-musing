#
# Cookbook:: mongodb
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_repository 'mongodb' do
   uri 'https://repo.mongodb.org/apt/ubuntu'
   keyserver 'keyserver.ubuntu.com'
   key '2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5'
   arch 'amd64,arm64'
   distribution 'xenial/mongodb-org/3.6'
   components ['multiverse']
end

package 'mongodb-org'

service 'mongodb' do
 service_name 'mongod'
 action [:enable, :start]
end

