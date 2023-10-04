require 'spec_helper'

# 共通のパス設定
path_setting = '/home/ec2-user/.rbenv/shims:$PATH'

describe 'Ruby' do
  describe command('ruby -v') do
    let(:path) { path_setting }
    its(:stdout) { should match /ruby 3.1.2/ }
  end

  describe package('bundler') do
    let(:path) { path_setting }
    it { should be_installed.by('gem').with_version('2.3.14') }
  end

  describe package('rails') do
    let(:path) { path_setting }
    it { should be_installed.by('gem').with_version('7.0.4') }
  end

  describe package('unicorn') do
    let(:path) { path_setting }
    it { should be_installed.by('gem') }
  end
end

describe 'Node.js and Yarn' do
  describe command('node -v') do
    let(:path) { path_setting }
    its(:exit_status) { should eq 0 }
  end

  describe command('yarn -v') do
    let(:path) { path_setting }
    its(:exit_status) { should eq 0 }
  end
end

describe 'Nginx' do
  describe package('nginx') do
    it { should be_installed }
  end

  describe service('nginx') do
    it { should be_running }
  end

  describe file('/etc/nginx/conf.d/rails.conf') do
    it { should be_file }
  end

  describe port(80) do
    it { should be_listening }
  end

  describe command('curl http://127.0.0.1:80/ -o /dev/null -w "%{http_code}\n" -s') do
    its(:stdout) { should match /^200$/ }
  end
end

describe 'Git' do
  describe package('git') do
    it { should be_installed }
  end
end

# その他のパッケージ
%w[gcc-c++ patch openssl-devel libyaml-devel libffi-devel libicu-devel libxml2-devel libxslt-devel zlib-devel readline-devel ImageMagick-devel].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

# アプリケーションの存在確認
describe 'sample_spec' do
  it 'checks the existence of raisetech-live8-sample-app in /var/www/' do
    output = command('ls -al /var/www/').stdout
    expect(output).to match(/raisetech-live8-sample-app/)
  end
end

