Rails.application.routes.draw do
    root 'home#index'
    get  'home/search'

  	get  'users/new'
  	get  'users/create'
  	post 'users/create'
  	post 'users/new'

  	get  'login/index'
  	get  'login/logout'
  	get  'login/home'
  	get  'login/login_attempt'
    get  'login/admin'
    get  'login/admin_home'
	get  'login/profile'
    post 'login/index'
  	post 'login/login_attempt'
    post 'login/admin'
  	get  'feedback/index'
    post 'feedback/index'
	
	resources :post
    get 'post/show'

end
