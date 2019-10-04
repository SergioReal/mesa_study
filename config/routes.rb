Rails.application.routes.draw do

get '/' => "home#top"
get 'vocabulary/:id/edit' => "vocabulary#edit"
post 'vocabulary/:id/update' => "vocabulary#update"
get 'login'=> "user#login_form"
post 'login' => "user#login"
post 'logout' => "user#logout"
get "vocabulary/index" => "vocabulary#index"
get "vocabulary/new" => "vocabulary#new"
get "vocabulary/:id" => "vocabulary#show"
post "vocabulary/add" => "vocabulary#add"
delete "vocabulary/:id/destroy" => "vocabulary#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
