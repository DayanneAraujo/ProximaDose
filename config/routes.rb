Rails.application.routes.draw do
  root to:  redirect("/d_vaccines")
  resources :d_vaccines do
    get :list, on: :collection
    get :pending, on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
