Rails.application.routes.draw do
  root to: "items#index"
  devise_for :users
  resources :items
  # 以下のルーティングを追加 onlyでshowアクションのみに制限
  resources :users, only: :show
end
