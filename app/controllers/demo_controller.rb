class DemoController < ApplicationController

  layout false

  def index
    # explicit render - most of the time we don't need this and can rely on default behavior
    # render('demo/index')
  end

  def hello
    @array = [1,2,3,4,5]
    # render('hello')
    # redirect_to(:controller => 'demo', :action => 'index')
  end

end
