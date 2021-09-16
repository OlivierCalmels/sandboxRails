Rails.application.routes.draw do
  root 'dogs#index'

  get "icons/generate" => "icons#generate", format: :svg

  get "icontest" => "icons#test"

  resources :dogs do
    member do
      get 'badge' => 'dogs#badge', format: :svg
      get "generate" => "icons#generate", format: :svg
    end
  end
end