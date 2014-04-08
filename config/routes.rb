BusTimetable::Application.routes.draw do
  resources :stations
  resources :lines
  resources :stops
  root :to => 'stations#index'
end
