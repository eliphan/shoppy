Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resouces :orders, only: [:index, :show, :create]
  resouces :order_items, only: [:index. :show, :create, :edit, :update, :destroy]

end
