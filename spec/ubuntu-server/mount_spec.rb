require 'spec_helper'

describe file('/') do
  it { should be_mounted.with( :type => 'ext4' ) }
end

describe file('/') do
  it { should be_mounted.with( :options => { :rw => true } ) }
end
