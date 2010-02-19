class StartPageController < ApplicationController
  
  def index
    @entries = Entry.latest

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @entries }
    end
  end
  
end
