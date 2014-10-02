#
# Cookbook Name:: slack
# Recipe:: default
#
# Copyright 2014, Risk I/O
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
chef_gem "multipart-post" do
  action :upgrade
end

require 'multipart-post'

chef_gem "slackr" do
  action :install
end

require 'slackr'
