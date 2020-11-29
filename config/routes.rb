Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'bookers/new'
  get 'top' => 'homes#top'
  
  post 'bookers' => 'bookers#create'
  get 'bookers' => 'bookers#index' , as: 'home_booker'
  get 'bookers/:id' => 'bookers#show', as: 'booker'
  get 'bookers/:id/edit' => 'bookers#edit', as: 'edit_booker'
  patch 'bookers/:id' => 'bookers#update', as: 'update_booker'
  delete 'bookers/:id' => 'bookers#destroy', as: 'destroy_booker'
end
