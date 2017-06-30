Rails.application.routes.draw do
  root 'recipes#index'
  
  get 'recipes/index'
end
