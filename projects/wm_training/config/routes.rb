Rails.application.routes.draw do
  # resources(:deliveries, { only: :index })
  resources :deliveries, only: :index do
    get 'teste', on: :collection
  end
end
