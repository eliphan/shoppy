Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  resources :products, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resouces :orders, only: [:index, :show, :create]
  resouces :order_items, only: [:index. :show, :create, :edit, :update, :destroy]
  end

  namespace :admin do
    resouces :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resouces :categories, :only [:index, :new, :create, :edit, :update, :destroy]
    resouces :orders, only: [:index]
  end

end
