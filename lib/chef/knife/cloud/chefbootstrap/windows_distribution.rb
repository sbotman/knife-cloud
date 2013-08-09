#
# Author:: Prabhu Das (<prabhu.das@clogeny.com>)
# Copyright:: Copyright (c) 2013 Opscode, Inc.
# License:: Apache License, Version 2.0
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
require 'chef/knife/cloud/chefbootstrap/bootstrap_distribution'
require 'chef/knife/bootstrap_windows_base'

class Chef
  class Knife
    class Cloud
      class WindowsDistribution < BootstrapDistribution

        include Chef::Knife::TemplateFinder # This is included to expose get_template method from windows distribution.

        def initialize(config)
          super
          config[:distro] ||= "windows-chef-client-msi"
          @template = get_template(config)
        end
      end
    end
  end
end