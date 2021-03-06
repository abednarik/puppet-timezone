require 'spec_helper.rb'

describe 'timezone' do

  let(:title) { 'timezone' }
  let(:node) { 'rspec.example42.com' }
  let(:facts) { {
      :ipaddress => '10.42.42.42',
      :concat_basedir => '/dne',
      :operatingsystemrelease => '6.6',
      :operatingsystem => 'Debian',
      :osfamily => 'Debian',
      :lsbdistcodename => 'Jessie'
  } }

  it { should compile }
  it { should contain_class('timezone') }
end
