require 'spec_helper'

describe package('htop') do
  it { should be_installed }
end

describe package('libgmp10') do
  it { should be_installed }
end

describe package('avahi-daemon') do
  it { should be_installed }
end

describe service('avahi-daemon') do
  it { should be_enabled }
  it { should be_running }
end
