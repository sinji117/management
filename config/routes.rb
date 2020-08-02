Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: "items#index"
  devise_for :users
  resources :items
  # 以下のルーティングを追加 onlyでshowアクションのみに制限
  resources :users, only: :show
  post "/callback" => "linebot#callback"
end
