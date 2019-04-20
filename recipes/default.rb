# Cookbook:: pdqdeploy
# Recipe:: default
#
# Copyright:: 2019, Garrett Yamada, All Rights Reserved.

return unless platform?('windows')  

include_recipe 'chocolatey::default'
include_recipe 'pdqdeploy::pdq'