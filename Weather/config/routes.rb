Rails.application.routes.draw do
  namespace :api do
    get '/maps' => 'maps#index'
  end
end

