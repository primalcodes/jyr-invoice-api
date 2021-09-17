Rails.application.routes.draw do
  post '/invoices/:id', to: 'invoices#update'
  resources :invoices do
    post '/line_items/:id', to: 'line_items#update'
    resources :line_items
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
