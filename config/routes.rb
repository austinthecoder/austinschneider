Rails.application.routes.draw do

  root :to => 'pages#home'

  get 'error', :to => 'pages#error'

end
