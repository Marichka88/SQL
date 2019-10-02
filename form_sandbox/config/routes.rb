Rails.application.routes.draw do
  get '/' => 'forms#new'
  post '/form_submission_url' => 'forms#create'
end
