# frozen_string_literal: true
Rails.application.routes.draw do
  resources :quotes
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/my-quotes' => 'quotes#my_quotes'
  resources :users, only: [:index, :show]
  resources :quotes, except: [:new, :edit]

end
