Rails.application.routes.draw do
  # root 'index#index'
  post 'send_mail', to: 'email#send_email'
end
