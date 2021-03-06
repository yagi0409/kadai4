Rails.application.routes.draw do
  get 'users/show'
  root 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :books do
   resource :favorites, only: [:create, :destroy]
   resources :book_comments, only: [:create, :destroy]
 end
  resources :users, only: [ :index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
