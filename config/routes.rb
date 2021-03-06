# frozen_string_literal: true
Rails.application.routes.draw do
  resources :projects, except: [:new, :edit]
  resources :my_gears, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show, :update, :destroy, :create]

  post '/search/weather' => 'search#weather_search'
end
