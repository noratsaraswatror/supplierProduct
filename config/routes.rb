Rails.application.routes.draw do
  get 'supplier/index'
  get 'supplier/supplier_product_list'
  devise_for :users
  root to: "home#index"
  get 'home/index'
  post 'home/import'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
