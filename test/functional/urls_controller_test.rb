require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create shortened url id" do
    post :create, :url => { 'url' => 'http://www.google.com' }
    assert_not_nil(flash[:shortened_id])
  end
end
