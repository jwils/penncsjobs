JobBoard::Application.routes.draw do
  resources :messages


  resources :job_postings


  resources :companies


  devise_for :users, controllers: { confirmations: 'confirmations' }
  devise_scope :user do
    get '/confirmation-getting-started' => 'registrations#getting_started', as: 'confirmation_getting_started'
  end

  resources :users

  root :to => 'job_postings#index'

end
