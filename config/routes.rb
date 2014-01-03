ActionController::Routing::Routes.draw do |map|

  map.resources :users
  map.resource :session

  map.root :controller => "home"
  
  map.purses '/purses', :controller => 'staticpages', :action => 'purses'
  map.bootcovers '/bootcovers', :controller => 'staticpages', :action => 'bootcovers'
  map.homedecor '/homedecor', :controller => 'staticpages', :action => 'homedecor'
  map.jewelry '/jewelry', :controller => 'staticpages', :action => 'jewelry'
  map.about '/about', :controller => 'staticpages', :action => 'about'
  map.contactme '/contactme', :controller => 'staticpages', :action => 'contactme'

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
