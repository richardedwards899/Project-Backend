Rails.application.routes.draw do

  devise_for :users

  resources :users

  # Our routes! We don't need to provide *all* the routes.
  # We'll need to route requests to reports_controller, inputs_controller and users_controller.

  scope path: "/api/" do
  #
  #   #Restful routes for users_controller.
  #   get 'user' => 'users#index'          # this shows ALL users
  #   get 'users/:id' => 'users#show'       # this shows one particular user
  #
  #   #Non-restful routes for users_controller
  #   get 'users/:id/reports'=> 'users#show_user_reports'                           # this shows all reports for one user
  #   get 'users/:id/reports/:r_id'=> 'users#show_report'                           # this a particular report for one user
  #   get 'users/:id/reports/:r_id/inputs' => 'users#show_report_inputs'            # this shows ALL inputs for a user's report
  #   get 'users/:id/reports/:r_id/inputs/:i_id' => 'users#show_report_input'       # this shows one particular input
  #   put 'users/:id/reports/:r_id/inputs/:i_id/:value' => 'users#set_input_value'  # sets a particular input's value to :value
  #
  #   #Restful routes for reports_controller.
      get 'reports' => 'reports#index'      # this shows ALL reports for the logged in user...
  #   get 'reports/:id' => 'reports#show'   # this shows one particular report
  #
  #   #Restful routes for inputs_controller.
  #   get 'inputs' => 'inputs#index'        # this shows ALL inputs
  #   get 'inputs/:id' => 'inputs#show'     # this shows one particular input
  #
  end


  # get 'users/new' => 'users#new'        # returns a form for enter a new user's details
  # post 'users' => 'users#create'        # create a new user using data in the form

  # get 'users/:id/edit' => 'users#edit'  # returns a form for editing a user's details
  # put 'users/:id' => 'users#update'     # updates a user using data in the form

  # delete 'users/:id' => 'users#destroy' # delete a particular user






  ##################################################################################################

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
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
