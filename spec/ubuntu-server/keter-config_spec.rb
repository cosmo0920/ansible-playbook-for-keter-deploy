require 'spec_helper'

describe file('/opt/keter/etc/keter-config.yaml') do
  let(:user) { ENV["SERV_USER"] }
  it { should be_file }

  context "check config yaml contents" do
    its(:content) { should match /root: ../ }
    its(:content) { should match /host:.*4/ }
    its(:content) { should match /port: 8000/ }
    its(:content) { should match /setuid: #{user}/ }
  end
end
