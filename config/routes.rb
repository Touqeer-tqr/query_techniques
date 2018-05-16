Rails.application.routes.draw do
  root 'users#show'
  post 'search' => 'users#search'
end
