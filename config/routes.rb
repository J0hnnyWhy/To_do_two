Rails.application.routes.draw do

  root 'lists#index'

  resources :lists do
    resources :description
    resources :tasks do
      resources :subtask
    end
  end

  match '/tasks/complete/:id' => 'tasks#complete', as: 'complete_task', via: :put
  match '/tasks/complete/:id' => 'tasks#incomplete', as: 'incomplete_task', via: :delete

end
