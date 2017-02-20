Rails.application.routes.draw do

  # get 'menus/section_id:integer'
  # get 'menus/item_id:integer'

  get "/" => "homes#index"
  get "/contact-us" => "homes#contact_us"
  resources :homes
  resources :menus
  resources :items

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
