#
# Cookbook:: apache-cookbook
# Recipe:: installapache
#
# Copyright:: 2022, The Authors, All Rights Reserved.
#
#
#
package 'apache2' do
    action :install 
end
    

service 'apache2' do
    action [:start, :enable] 
end


cookbook_file '/var/www/html/index.html' do
    source 'index.html'
    mode '0755'
    owner 'root'
    group 'root'
end


