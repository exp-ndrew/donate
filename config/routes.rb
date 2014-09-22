Rails.application.routes.draw do
  root :to => 'nonprofits#index'

  resources :nonprofits do
    resources :donations
  end
end
