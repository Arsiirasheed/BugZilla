Rails.application.routes.draw do
  #get 'home/index'
  devise_for :users


  resource :projects do
    resource :bugs do
      resource :comments
    end
  end

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
