require 'spec_helper'

describe default_gateway do
  its(:interface) { should eq 'eth0' }
end

describe host(ENV['SERV_NAME']) do
  it { should be_resolvable.by('dns') }
end

describe host(ENV['SERV_NAME']) do
  it { should be_reachable.with(port: 22)  }
  it { should be_reachable.with(port: ENV['APP_PORT'])  }
end
