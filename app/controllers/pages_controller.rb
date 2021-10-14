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

  def guess_number
    number = params["number"]
    n = number.to_i

    if n == 33
      render json: {message: "Congrats! You got it!"}
    elsif n < 33
      render json: {message: "Too low..."}
    elsif n > 33
      render json: {message: "Too high..."}
    end
  end

end
