Rails.application.routes.draw do
  get :token, controller: 'application'
  
  resources :company_goals
  resources :user_goals
  resources :team_users
  resources :team_goals
  resources :activities
  resources :goals
  resources :teams
  resources :users
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
