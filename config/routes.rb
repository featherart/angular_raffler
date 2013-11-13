Raffler::Application.routes.draw do
  
  root to: "raffle#index"

  resources :entries
  get "raffle/index"

end
