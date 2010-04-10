require 'test_helper'
class InfoMessageTest < ActionView::TestCase
  
  def test_should_have_options_as_attributes
    msg = InfoMessage.new(:body => "some_body")
    assert_equal "<h2 class=\"error\">some_body</h2>", msg.to_s
  end
  
end
