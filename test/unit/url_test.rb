require 'test_helper'

class UrlTest < ActiveSupport::TestCase
  test "url exists" do
    u = Url.new(:url => "http://www.example.com")
    assert u.valid?
  end
  
  test "should not save without url" do
    u = Url.new
    assert !u.save, "Saved Url without a url"
  end
end
