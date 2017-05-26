Rails.application.routes.draw do
  resources :comments

  root 'devneeds#index'

  devise_for :users
  resources :devneeds
  resources :devneeds do
    member do
      put 'like' => 	'devneeds#upvote'
      put 'dislike' => 	'devneeds#downvote'
    end
    resources :comments
  end


end
