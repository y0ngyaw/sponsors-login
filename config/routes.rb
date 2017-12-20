Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  
  root 'sessions#new'

  resources :projects
  resources :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
