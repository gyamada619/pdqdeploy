# Cookbook:: pdqdeploy
# Recipe:: pdq
#
#Copyright 2019 Garrett Yamada.
#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

return unless platform?('windows') 

chocolatey_package 'pdq-deploy' do
    action :install
end

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Admin Arsenal' do
    action :create
end

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Admin Arsenal\PDQ Deploy' do
    values [{
        name: 'License',
        type: :string,
        data: node['pdq']['license']
    }]
    action :create
end

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Admin Arsenal\PDQ Deploy\Protocol' do
    values [{
        name: 'Mode',
        type: :string,
        data: node['pdq']['mode']
    },
    {
        name: 'ServerHostName',
        type: :string,
        data: node['pdq']['serverhostname']
    },
    {
        name: 'ServerPort',
        type: :dword,
        data: node['pdq']['port']
    }]
    action :create
end