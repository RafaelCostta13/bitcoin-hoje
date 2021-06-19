Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "(/:ticket_coin)", to: 'coins#index', defaults: {:ticket_coin => 'bitcoin'} 
end
