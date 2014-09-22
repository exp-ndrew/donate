Rails.application.routes.draw do
  resources :nonprofits do
    resources :donations
  end
end
