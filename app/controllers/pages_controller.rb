class PagesController < ApplicationController
  
  def tester
    render json: {message: "hello"}
  end
end
