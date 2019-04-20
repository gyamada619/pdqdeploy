# # encoding: utf-8

# Inspec test for recipe pdqdeploy::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe registry_key('Admin Arsenal','HKEY_LOCAL_MACHINE\SOFTWARE\Admin Arsenal') do
  it { should exist }
end

describe registry_key('PDQ Deploy','HKEY_LOCAL_MACHINE\SOFTWARE\Admin Arsenal\PDQ Deploy') do
  it { should exist }
end

describe registry_key('Protocol','HKEY_LOCAL_MACHINE\SOFTWARE\Admin Arsenal\PDQ Deploy\Protocol') do
  it { should exist }
end

