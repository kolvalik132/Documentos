Rails.application.routes.draw do

  get 'mostrar/index'

  resources :has_clauses
  resources :has_documents
  resources :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :documents do
  	resources :clauses
  end
  get 'welcome/index'
  get 'mostrar/index'

root 'welcome#index'

  
end
