Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get "/test" => "pages#tester"
get "/name" => "pages#first_letter"
end
