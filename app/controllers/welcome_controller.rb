class WelcomeController < ApplicationController
  def index
    @homeland = 'USA'
    @countries = ['Chile', 'Russia', 'Norway', 'Canada']
    @country_pics = ['canada.jpeg', 'chile-mountains.jpg', 'moscow.jpg', 'norway.png']
  end

  def about_params

    params[:color] == nil ? @color = 'orange' : @color = params[:color]

    # if params[:color] == nil
    #   @color = 'orange'
    # else
    #   @color = params[:color]
    # end

    @size = params[:shoe_size]

  end
end
