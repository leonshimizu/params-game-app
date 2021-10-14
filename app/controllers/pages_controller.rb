class PagesController < ApplicationController
  
  def tester
    render json: {message: "test"}
  end

  def first_letter
    letter = params["name"][0]
    
    if letter.downcase == "a"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else
      render json: {message: "Your name doesn't start with the first letter of the alphabet..."}
    end
  end
  
end
