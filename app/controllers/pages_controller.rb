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
    answer = rand(1..100)

    p answer

    if n == answer
      render json: {message: "Congrats! You got it!"}
    elsif n < answer
      render json: {message: "Too low..."}
    elsif n > answer
      render json: {message: "Too high..."}
    end
  end

  def tester2
    render json: {message: "hello"}
  end

end
