#
# Cookbook:: netextender
# Recipe:: install
#
# Copyright:: 2021, Nghiem Ba Hieu
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

windows_package 'NetExtender' do
  source node['netextender']['source']
  version node['netextender']['version']
  installer_type :msi
  returns [0, 3010, 1641]
  options '/norestart /qn'
  action :install
end
