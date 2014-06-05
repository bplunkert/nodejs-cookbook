#
# Cookbook Name:: nodejs
# Attributes:: nodejs
#
# Copyright 2010-2012, Promet Solutions
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

case node['platform_family']
  when "smartos", "rhel", "debian", "fedora"
    default['nodejs']['install_method'] = 'package'
  else
    default['nodejs']['install_method'] = 'source'
end
default['nodejs']['version'] = '0.10.28'
default['nodejs']['checksum'] = 'abddc6441e0f208f6ed8a045e0293f713ea7f6dfb2d6a9a2024bf8b1b4617710'
default['nodejs']['checksum_linux_x64'] = '5f41f4a90861bddaea92addc5dfba5357de40962031c2281b1683277a0f75932'
default['nodejs']['checksum_linux_x86'] = '81ee7f30c35e1743790fd9ca47235bdec4a6c9d2b89a70f33c69e80008cbf422'
default['nodejs']['checksum_linux_arm-pi'] = '561ec2ebfe963be8d6129f82a7d1bc112fb8fbfc0a1323ebe38ef55850f25517'
default['nodejs']['dir'] = '/usr/local'
default['nodejs']['npm'] = '1.4.4'
default['nodejs']['src_url'] = "http://nodejs.org/dist"
default['nodejs']['make_threads'] = node['cpu'] ? node['cpu']['total'].to_i : 2
default['nodejs']['check_sha'] = true

# Set this to true to install the legacy packages (0.8.x) from ubuntu/debian repositories; default is false (using the latest stable 0.10.x)
default['nodejs']['legacy_packages'] = false
