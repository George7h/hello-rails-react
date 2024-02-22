Rails.application.routes.draw do
  root 'root#index'

  namespace :api do
    namespace :v1 do
      get 'greeting' => 'greetings#random_greeting'
    end
  end
  

  get "up" => "rails/health#show", as: :rails_health_check

end
