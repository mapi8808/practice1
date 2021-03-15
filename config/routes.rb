Rails.application.routes.draw do
  
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  passwords: 'users/passwords',
  registrations: 'users/registrations',
}
  
  devise_for :admins, controllers: {
  sessions: 'admins/sessions', 
  passwords: 'admins/passwords', #パスワード 
  registrations: 'admins/registrations',  # 登録
}

  scope module: :user do
    resources :books
    root to: 'books#top'
  end  
  
  namespace :admin do
    resources :books
  end
end
