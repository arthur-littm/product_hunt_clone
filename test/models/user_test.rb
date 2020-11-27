require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the #fullname return a nicely formatted name" do
    # setup
    correct_fullname = 'Arthur Littmann'
    user = User.new(first_name: "ArThuR", last_name: 'LiTTmAnn')

    # exercise
    string = user.fullname

    # verify
    assert_equal correct_fullname, string
  end
end
