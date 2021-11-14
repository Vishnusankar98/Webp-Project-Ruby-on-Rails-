# Rails.application.routes.draw do
#   get 'books/index'
#   get 'books/show'
#   get 'books/new'
#   get 'books/edit'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end

Rails.application.routes.draw do
  resources :books, only: [:create, :show, :index, :update, :destroy]
end