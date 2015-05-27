# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :projects do
    get 'niko_faces/oneday/:days', :controller => 'niko_faces', :action => 'index', :as => 'niko_faces_oneday'
    get 'niko_faces/backnumber/:id', :controller => 'niko_faces', :action => 'backnumber', :as => 'niko_faces_backnumber'
    resources :niko_faces do
      resources :niko_responses
    end
  end
end
