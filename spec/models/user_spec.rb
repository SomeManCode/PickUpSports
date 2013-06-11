require 'spec_helper'

describe User do
    it { should has_many(:sports) }
    before do
        @user1 = User.create(:username => "StraightBallin", :avatar => "pic")
    end

    it "should be created" do
        @user1.should_not eq(nil)
    end

    it "should have a username" do
        @user1.username.should_not eq(nil)
    end

    it "should have an avatar" do
        @user1.avatar.should_not eq(nil)
    end

end