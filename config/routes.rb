Rails.application.routes.draw do
  get '/' => "pages#index", as: "pages"
  get '/contact' => "pages#contact"
  get '/gallery' => "pages#gallery"
  get '/about' => "pages#about"
end
