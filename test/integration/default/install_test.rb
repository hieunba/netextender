# # encoding: utf-8

# Inspec test for recipe netextender::install

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

return 'Only supports Windows platform' unless os.windows?

NETEXTENDER_VERSION = '10.2.313'

# This is an example test, replace it with your own test.
describe file('C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender\NECLI.exe') do
  it { should exist }
end

# test NECLI version with call operator &
#   Source: https://social.technet.microsoft.com/wiki/contents/articles/7703.powershell-running-executables.aspx#The_Call_Operator_amp
describe command('& "C:\Program Files (x86)\SonicWall\SSL-VPN\NetExtender\NECLI.exe" -version') do
  its('exit_status') { should eq 0 }
  its('stdout') { should match(/#{NETEXTENDER_VERSION}/) }
end
