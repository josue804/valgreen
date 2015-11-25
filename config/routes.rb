Rails.application.routes.draw do
  get '/' => "pages#index", as: "pages"
  get '/contact' => "pages#contact"
  get '/portfolio' => "pages#portfolio"
  get '/about' => "pages#about"

  resources :requests
end
