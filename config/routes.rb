Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/test" => "pages#tester"

get "/name" => "pages#first_letter"

get "/number" => "pages#guess_number"

get "/test2/:url_segment" => "pages#tester2"

get "/sum/:number1/:number2" => "pages#numbers_sum"

get "/guesser/:number" => "pages#guess_number"

post "/test3" => "pages#tester3"

post "/guess3" => "pages#guess_number"

post "/login" => "pages#valid"

end
