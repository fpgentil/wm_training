Rails.application.routes.draw do
  root "home#index"
  resources :deliveries, only: :index do
    get :detalhes
  end
end

# resources(:deliveries, {only: :index}) do
#   get(:detalhes, {on: :collection})
# end
