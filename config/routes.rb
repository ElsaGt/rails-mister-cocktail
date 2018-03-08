Rails.application.routes.draw do
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root to: 'pages#home' do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end
end
# end
