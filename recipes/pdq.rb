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








