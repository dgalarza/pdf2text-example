Rails.application.routes.draw do
  root to: 'home#show'

  resources :pdfs, only: [] do
    collection do
      post :parse
    end
  end
end
