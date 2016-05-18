#
# Cookbook Name:: jenkins_wrapper
# Recipe:: master
#
# Copyright (C) 2016 Bob
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Install java with default behaviour
include_recipe ('java::default')
# Install jenkins master with default behaviour
include_recipe 'jenkins::master'

# Install Git plugin
git_client 'default' do
  action :install
end

jenkins_plugin 'git' do
  notifies :restart, 'service[jenkins]', :delayed
end

jenkins_plugin 'chef-identity' do
  notifies :restart, 'service[jenkins]', :delayed
end

# TODO: Investigate why jenkins_plugin doesn't install rvm plugin
jenkins_command "install-plugin rvm" do
  notifies :restart, 'service[jenkins]', :delayed
end

jenkins_plugin "ssh-agent" do
  notifies :restart, 'service[jenkins]', :delayed
end
