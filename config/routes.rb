Rails.application.routes.draw do
  get 'dashboard/home'
  namespace :admin do
    resources :sessions
    resources :dashboard do
      collection do
        get 'home'
        get 'workers'
      end
    end
    root "dashboard#home"
  end

  resources :sessions
  resources :workers
  root "dashboard#home"
end
