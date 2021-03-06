=begin
require 'test_helper'

class UsersIndexTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:michael)
  end

  test 'index including paginate' do
    log_in_as(@user)
    get users_path
    assert_template 'users/index'
    assert_select 'div.paginate'
    User.paginate(page: 1).each do |user|
      assert_select 'a[href=?]', user_path(user), test: user.name
    end
   end
  end
=end
