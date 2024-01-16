Rails.application.routes.draw do
  get '/' => 'homes#top' 
  resources :books 

  
  #基本： get '/top' => 'homes#top'
  #最後「resources」method
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
 
 # get 'books/index'
  #get '/new' => 'books#new'
  #post 'books' => 'books#create'
  #get 'books/:id' => 'books#show', as: 'book'
  #get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  #patch 'books/:id' => 'books#update', as: 'update_book'
  #delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
