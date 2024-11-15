Rails.application.routes.draw do
  resources :players, only: %i[index create destroy show update] do
    member do
      post :update_elo_rating
    end
  end
end
