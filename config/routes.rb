Rails.application.routes.draw do

  # Home
  get    "home/index",                                  as: :home_index
  root   "home#index",                                  as: :root

  # Movies routes
  get	    "/movies",              to:	"movies#index",   as: :movies
  get	    "/movies/new",          to:	"movies#new",     as: :movies_new
  post    "/movies",              to:	"movies#create",  as: :movies_create
  get	    "/movies/:id",          to:	"movies#show",    as: :movies_show
  get	    "/movies/:id/edit",     to:	"movies#edit",    as: :movies_edit
  patch	  "/movies/:id",          to:	"movies#update",  as: :movies_update
  get     "/movies/:id/delete",   to: "movies#destroy", as: :movies_destroy
  delete  "/movies/:id",          to:	"movies#destroy", as: :movies_delete
  

  # Books routes
  get	    "/books",               to:	"books#index",    as: :books
  get	    "/books/new",           to:	"books#new",      as: :books_new
  post    "/books",               to:	"books#create",   as: :books_create
  get	    "/books/:id",           to:	"books#show",     as: :books_show
  get	    "/books/:id/edit",      to:	"books#edit",     as: :books_edit
  patch	  "/books/:id",           to:	"books#update",   as: :books_update
  get     "/books/:id/delete",    to: "books#destroy",  as: :books_destroy
  delete	"/books/:id",           to:	"books#destroy",  as: :books_delete

  # Albums routes
  get	    "/albums",              to:	"albums#index",   as: :albums
  get	    "/albums/new",          to:	"albums#new",     as: :albums_new
  post    "/albums",              to:	"albums#create",  as: :albums_create
  get	    "/albums/:id",          to:	"albums#show",    as: :albums_show
  get	    "/albums/:id/edit",     to:	"albums#edit",    as: :albums_edit
  patch	  "/albums/:id",          to:	"albums#update",  as: :albums_update
  get     "/albums/:id/delete",   to: "albums#destroy", as: :albums_destroy
  delete	"/albums/:id",          to:	"albums#destroy", as: :albums_delete

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
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
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
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
  #   resources :movies, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
