Rails.application.routes.draw do

  resources :cities do
    resources :excursions, shallow: true do
      resources :comments, shallow: true
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
