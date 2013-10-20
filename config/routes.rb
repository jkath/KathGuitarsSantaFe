ActionController::Routing::Routes.draw do |map|
  map.resources :bluesbayous

  map.resources :project_pics

  map.resources :projects

  map.resources :guitar_pics

  
  map.resources :users
  map.resource :session
  map.resources :devonshires
  map.root :controller => "home"
  
  map.repairs '/repairs', :controller => 'staticpages', :action => 'repairs'
  map.contactme '/contactme', :controller => 'archtops', :action => 'contactme'
  map.customguitars '/customguitars', :controller => 'archtops', :action => 'customguitars'
  map.customizations '/customarchtops', :controller => 'staticpages', :action => 'archtops'
  map.customizations '/customflattops', :controller => 'staticpages', :action => 'flattops'
  map.customizations '/semihollow', :controller => 'staticpages', :action => 'semihollow'
  map.lessons '/lessons', :controller => 'staticpages', :action => 'lessons'
  map.uptown '/uptown', :controller => 'staticpages', :action => 'devonshiregallery'
  map.acousticrepairs '/acousticrepairs', :controller => 'staticpages', :action => 'acousticrepairs'
  map.electricrepairs '/electricrepairs', :controller => 'staticpages', :action => 'electricrepairs'
  map.devonshirelist '/devonshirelist', :controller => 'devonshires', :action => 'publiclist'
  map.guitarpicslist '/guitarpicslist', :controller => 'guitar_pics', :action => 'publiclist'
  map.shoppics '/shoppics', :controller => 'staticpages', :action => 'shoppics'
  map.getphotoxml '/getphotoxml', :controller => 'home', :action => 'getphotoxml'
  map.currprojects '/currprojects', :controller => 'projects', :action => 'publiclist'
  map.showproject '/publicshow', :controller => 'projects', :action => 'publicshow'
  map.showpic '/showpic', :controller => 'project_pics', :action => 'show'
  map.bayou '/bayou', :controller => 'bluesbayous', :action => 'show'
  map.versa '/versa', :controller => 'staticpages', :action => 'versa'
  map.versa '/fleur', :controller => 'staticpages', :action => 'fleur'
  map.versa '/dresden', :controller => 'staticpages', :action => 'dresden'
  map.uptown '/uptown', :controller => 'staticpages', :action => 'uptown'
  map.sunset '/sunset', :controller => 'staticpages', :action => 'sunset'
  map.gales '/gales', :controller => 'staticpages', :action => 'gales'
  map.gales '/tabs', :controller => 'staticpages', :action => 'tabs'
  
  map.getbluesvideos '/getbluesvideos', :controller => 'staticpages', :action => 'getbluesvideos' 
  
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
