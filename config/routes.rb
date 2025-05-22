Rails.application.routes.draw do
  get "carter_photography/home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  root "galleries#index"
  get "galleries/new", to: "galleries#new", as: :new_gallery
  post "galleries", to: "galleries#create"
  get "galleries/:id", to: "galleries#show", as: :gallery
  get "galleries/:id/edit", to: "galleries#edit"
  patch "galleries/:id", to: "galleries#update"
  delete "galleries/:id", to: "galleries#destroy"
end
