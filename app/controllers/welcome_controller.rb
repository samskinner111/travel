class WelcomeController < ApplicationController
  def index
    @homeland = 'USA'
    @countries = ['Chile', 'Russia', 'Norway', 'Canada']
    @country_pics = ['canada.jpeg', 'chile-mountains.jpg', 'moscow.jpg', 'norway.png']
  end

  def about_params
    # One way to write this but the ternary operator (below) is more concise.
    # if params[:color] == nil
    #   @color = 'orange'
    # else
    #   @color = params[:color]
    # end
    params[:color] == nil ? @color = 'orange' : @color = params[:color]
    @size = params[:shoe_size]
  end
end
