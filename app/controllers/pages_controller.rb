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
    words = params[:url_segment]
    render json: {message: words}
  end

  def numbers_sum
    n1 = params["number1"].to_i
    n2 = params["number2"].to_i
    sum = n1 + n2
    render json: {sum: sum}
  end

  def guess
    n = params[:guess].to_i
    random = rand(1..100)
    p random
    test = 33

    if n == 33
      message = "You got it!"
    elsif n < 33
      message = "Too low"
    elsif n > 33
      message = "Too high"
    end
    render json: {guess: message}
  end 

end
