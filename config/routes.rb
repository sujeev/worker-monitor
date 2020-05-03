Rails.application.routes.draw do
  get 'dashboard/home'
  namespace :admin do
    resources :sessions do
      # member do
      #   delete 'destroy'
      # end
    end
    resources :dashboard do
      collection do
        get 'home'
        get 'workers'
      end
    end
    root "dashboard#home"
  end

  resources :sessions
  root "dashboard#home"
end
