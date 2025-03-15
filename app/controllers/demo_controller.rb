class DemoController < ApplicationController
  layout false

  def index
    # explicit render - most of the time we don't need this and can rely on default behavior
    # render('demo/index')
  end

  def hello
    @array = [ 1, 2, 3, 4, 5 ]
    @id = params["id"]
    @page = params[:page]
    # render('hello')
    # redirect_to(:controller => 'demo', :action => 'index')
  end

  def about
    render("demo/about_us")
  end

  def contact
    @country = params[:country]
    @phone_number = case @country

    when "us", "ca"
      "(800) 555-6789"
    when "uk"
      "(020) 7946 1234"
    else
      "+1 (987) 654-3210"
    end

    render("demo/contact_us")
  end
end
