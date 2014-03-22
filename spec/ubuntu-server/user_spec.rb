require 'spec_helper'

describe user(ENV['SERV_USER']) do
  it { should exist }
end

describe user(ENV['SERV_USER']) do
  it { should belong_to_group 'sudo' }
end
