Rails.application.routes.draw do
  root to: 'home#show'

  resources :parsed_pdfs, only: [:create]
end
