require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  test "Empty content" do
    entry = Entry.new(:user_name => "taro", :content => "")
    assert_equal false, entry.save
  end
end
