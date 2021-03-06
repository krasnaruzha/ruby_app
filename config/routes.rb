Rails.application.routes.draw do 
  get 'pages/home'
  get 'pages/contact'
  get 'pages/users'
  get 'pages/users/new'
  get 'pages/about'
  get 'pages/help'

  resources :users
  resources :microposts 
  resources :pages
  

  get '/contact', :to => 'pages#contact', :as => 'contact'
  get '/about', :to => 'pages#about', :as => 'about'
  get '/help', :to => 'pages#help', :as => 'help'
  get '/home', :to => 'pages#home', :as => 'home'
  get 'signup', :to =>'pages/users/new', :as => 'signup'

  #map.about   '/about',   :controller => 'pages', :action => 'about'
  #map.help    '/help',    :controller => 'pages', :action => 'help'
  #map.home    '/home',    :controller => 'pages', :action => 'home'
  #map.users   '/users',   :controller => 'pages', :action => 'users'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  #get 'users' => 'list#users', as: :print all

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  #    resources :users
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
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
