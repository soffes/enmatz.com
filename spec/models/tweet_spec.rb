require 'spec_helper'

describe Tweet do
  before(:each) do
    @valid_attributes = {
      :created_at => Time.now,
      :in_reply_to_screen_name => "value for in_reply_to_screen_name",
      :in_reply_to_status_id => 1,
      :in_reply_to_user_id => 1,
      :source => "value for source",
      :text => "value for text",
      :truncated => false
    }
  end

  it "should create a new instance given valid attributes" do
    Tweet.create!(@valid_attributes)
  end
end
