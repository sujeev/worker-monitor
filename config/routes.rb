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
    resources :workers do
      member do
        get 'activate'
        get 'deactivate'
      end
    end
    root "dashboard#home"
  end

  resources :sessions
  resources :workers do
    member do
      get 'punch_out'
    end
  end
  root "dashboard#home"
end
