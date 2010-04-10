class InfoMessage
  include ActionView::Helpers::TagHelper
  attr_reader :body, :class

  def initialize(options = {})
    @options = {
      :body => "InfoBox",
      :class => "notice",
    }.merge(options)
  end
  
  def to_s
    content_tag(:h2, @options[:body], :class => @options[:class])
  end
  
end