service 'mongodb' do
 service_name 'mongod'
 action [:stop]
end

apt_package 'mongodb' do
   action :purge
end

directory '/var/log/mongodb' do
  recursive true
  action :delete
end

directory '/var/lib/mongodb' do
  recursive true
  action :delete
end


