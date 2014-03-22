require 'spec_helper'

describe file('/opt/keter/bin/keter') do
  it { should be_file }
  it { should be_mode(755) }
  it { should be_executable }
end

describe service('keter') do
  it { should be_running }
end

describe port(80) do
  it { should_not be_listening }
end

describe port(ENV['APP_PORT']) do
  it { should be_listening }
end

describe file('/opt/keter/incoming/') do
  it { should be_directory }
  it { should be_owned_by ENV["SERV_USER"] }
end
