Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }

  # authenticated :user do
  devise_scope :user do
    # authenticated :user do
    get 'cohorts', to: "cohorts#index", via: [:get, :post]

    resources :cohorts do
      resources :phases, only: [:new, :create, :index]
      resources :students, only: [:new, :create, :index]
    end

    resource :phases, only: [:show, :edit, :delete, :update] do
      resources :weeks, only: [:new, :create, :index]
    end

    resources :weeks, only: [:show, :edit, :delete, :update] do
      resources :groups, only: [:new, :create, :index]
    end

    resources :students, only: [:show, :edit, :delete, :update] do
      resources :groups, only: [:index]
    end

    resource :groups, only: [:show, :edit, :delete, :update]

    scope :weeks do
      put '/:id', to: "weeks#update", as: 'update_week'
    end
end

  # end
  root to: "home#index"

end
