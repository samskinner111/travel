Rails.application.routes.draw do
  resources :destinations
  root 'welcome#index'

  get 'index' => 'welcome#index'
  get  'param', to: 'welcome#about_params'
end
