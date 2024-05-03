class UserMailer < ApplicationMailer
  default from: ENV['MAIL_FROM_ADDRESS']

  def send_email(email, subject, message)
    mail(to: email, subject: subject) do |format|
      format.text { render plain: message }
    end
  end
end
