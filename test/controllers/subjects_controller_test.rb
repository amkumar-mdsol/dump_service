require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get subjects_create_url
    assert_response :success
  end

end
