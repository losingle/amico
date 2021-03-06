require 'spec_helper'

describe Amico::Configuration do
  describe '#configure' do
    it 'should have default attributes' do
      Amico.configure do |configuration|
        configuration.namespace.should eql('amico')
        configuration.following_key.should eql('following')
        configuration.followers_key.should eql('followers')
        configuration.blocked_key.should eql('blocked')
        configuration.blocked_by_key.should eql('blocked_by')
        configuration.reciprocated_key.should eql('reciprocated')
        configuration.pending_key.should eql('pending')
        configuration.pending_with_key.should eql('pending_with')
        configuration.default_scope_key.should eql('default')
        configuration.pending_follow.should be_false
        configuration.page_size.should be(25)
      end
    end
  end
end