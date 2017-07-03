class WelcomeController < ApplicationController
  def index
    @homeland = 'USA'
    @countries = ['Chile', 'Russia', 'Norway', 'Canada']
    @country_pics = ['canada.jpeg', 'chile-mountains.jpg', 'moscow.jpg', 'norway.png']
  end

  def params
  end
end
