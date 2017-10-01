=begin
require 'test_helper'

def setup
  @user = users(:michael)
  @other_user = users(:joe)
end

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_path
    assert_response :success
  end

  test 'should redirect index when not logged in' do
    get users_path
    assert_redirected_to login_url
  end

  test 'should not allow admin attribute to be edited' do
    log_in_as(@other_user)
    assert_not @other_user.admin?
    patch users_path(@other_user), params: { user: { email: 'user@example.com',
                                            password: "password",
                                            password_confirmation: "password",
                                            } }
    assert_not @other_user.reload.admin?
  end

  test "should redirect destroy when not logged_in" do
    assert_no_difference 'User.count' do
      delete user_path(@user)
    end
    assert_redirected_to login_url
  end

=end
