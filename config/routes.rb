Learnbusiness::Application.routes.draw do
 
root 'content#index'
  # get "/" => 'content#index'


  # get "/login" => 'sessions#new'
  # get "/logout" => 'sessions#destroy'
  # get "/authenticate" => 'sessions#create'


  # get "/users/new" => 'users#new'
  # get "/users/create" => 'users#create'
  # get "/users/:user_id/show" => 'users#show'

  # # Product-related URLs

  # # CREATE
  get "content/new" => "content#new"
  get "content/create" => "content#create"

  
  # # READ
  get "/content" => 'content#index'
  get "/content/:content_id/show" => "content#show"

  # get "/"
  # get "/book/:product_id/show" => "book#show"

  # # UPDATE
  get "/content/:content_id/edit" => "content#edit"
  get "/content/:content_id/update" => "content#update"

  # # DELETE
   get "/content/:content_id/delete" => "content#destroy"

  # # Review-related URLs

  # get "/reviews/create" => 'reviews#create'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'books/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'books/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :books

  # Example resource route with options:
  #   resources :books do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :books do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :books do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/books/* to Admin::booksController
  #     # (app/controllers/admin/books_controller.rb)
  #     resources :books
  #   end
end
