require 'test_helper'

class UserNotifierTest < ActionMailer::TestCase
  test "password_reset_instructions" do
    @expected.subject = "Reset password"
    @expected.to      = "to@example.org"
    @expected.from    = "from@example.com"
    @expected.body    = read_fixture("reset_password")
    @expected.date    = Time.now

    assert_equal @expected, UserNotifier.reset_password
  end

end
