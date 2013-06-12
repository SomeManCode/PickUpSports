require 'spec_helper'

describe Sport do
    it { should belong_to(:user) }
    before do
        @basketball = Sport.create(:address => "madison square garden", :game => "basketball", :needed => "4")
        @baseball = Sport.create(:address => "paley park", :game => "baseball", :needed => "5")  
        @soccer = Sport.create(:address => "union square park", :game => "soccer", :needed => "10")      
    end

    it "should have basketball games" do
        Sport.find_by_game("basketball").should_not eq(nil)
        basketball = @basketball
        basketball.should_not eq(nil)
        basketball.game.should eq("basketball")
    end

    it "should have soccer games" do
        Sport.find_by_game("soccer").should_not eq(nil)
        soccer = @soccer
        soccer.should_not eq(nil)
        soccer.game.should eq("soccer")
    end

    it "should have baseball games" do
        Sport.find_by_game("baseball").should_not eq(nil)
        baseball = @baseball
        baseball.should_not eq(nil) 
        baseball.game.should eq("baseball")   
    end

    it "should have a location" do
        game1 = Sport.find_by_game("baseball")
        game1.address.should_not eq(nil)

        game2 = Sport.find_by_game("basketball")
        game2.address.should_not eq(nil)

        game3 = Sport.find_by_game("soccer")
        game3.address.should_not eq(nil)
    end

end