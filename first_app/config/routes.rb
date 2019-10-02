Rails.application.routes.draw do
  namespace :api do
    get '/summer_url' => 'example_pages#summer_action'
    get '/winter_url' => 'example_pages#winter_action'
    get '/spring_url' => 'example_pages#spring_action'
  end
end
