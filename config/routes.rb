Rails.application.routes.draw do
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
end
