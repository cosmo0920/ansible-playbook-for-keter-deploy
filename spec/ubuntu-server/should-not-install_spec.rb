require 'spec_helper'

describe package('gcc') do
  it { should_not be_installed }
end

describe package('clang') do
  it { should_not be_installed }
end

describe package('ghc') do
  it { should_not be_installed }
end

describe package('build-essential') do
  it { should_not be_installed }
end
