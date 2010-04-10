module ApplicationHelper
  
  def info_message
    flash[:message] or InfoMessage.new :body => (notice or "Die etwas andere Berufsberatung, auch für zukünftige Auszubildende")
  end

end
