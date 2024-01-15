Rails.application.routes.draw do
  get '/' => 'homes#top' 
  get '/index' => 'lists#index'
  get '/new' => 'lists#new'
  post 'lists' => 'lists#create'
  
 
  get 'lists/show'
  get 'lists/edit'
  
  
  #基本： get '/top' => 'homes#top'
  #最後「resources」method
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
