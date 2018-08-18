Rails.application.routes.draw do
  resources :informativos
  get 'temperatura/index'
  get 'mananciais/index'
  get 'desmatamento/index'
  get 'alagamentos/index'
  get 'poluicao/index'
  get 'transito/index'
  get 'sobre/index'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
