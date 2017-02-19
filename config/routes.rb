Rails.application.routes.draw do

  get "/" => "homes#index"
  get "/contact-us" => "homes#contact_us"
  resources :homes

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
