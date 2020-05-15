class PagesController < ApplicationController
  def index
  end
  
  def show
    pages_params
  end


  private
  def pages_params
    puts 'example'
  end
end
