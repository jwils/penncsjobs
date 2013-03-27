JobBoard::Application.routes.draw do
  resources :job_postings


  resources :companies


  devise_for :users

  root :to => 'job_postings#index'

end
