Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  # root 'index#index'
  post 'send_mail', to: 'email#send_email'
end
