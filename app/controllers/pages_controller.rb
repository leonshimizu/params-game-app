class PagesController < ApplicationController
  
  def tester
    render json: {message: "test"}
  end

  def first_letter
    render json: {message: "Hello"}
  end
end
