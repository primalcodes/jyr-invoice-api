Rails.application.routes.draw do
  resources :invoices do
    resources :line_items
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
