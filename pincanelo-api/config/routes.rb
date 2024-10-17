Rails.application.routes.draw do
  resources :players, only: %i[index create destroy]
end
