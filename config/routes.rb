Rails.application.routes.draw do
  root 'welcome#index'

  get 'index' => 'welcome#index'
  get  'params', to: 'welcome#params'
end
