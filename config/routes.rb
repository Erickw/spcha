Rails.application.routes.draw do
  resources :sints do
    get 'all_sints', on: :collection
    collection do
      put :discontinue
    end
  end
  resources :sintomas
  devise_for :users, controllers: { registrations: "registrations" }
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
