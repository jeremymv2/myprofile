# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

val_password = attribute('password', description: 'A value for the password')

describe val_password do
  it { should eq 'bob' }
end

control 'tmp-1.0' do
  title 'Create /tmp directory'             # A human-readable title
  desc  "The /tmp directory is a world-writable directory used for temporary storage by all users and some applications."
  impact 1.0
  describe mount("/tmp") do
    it { should be_directory }
  end
end
