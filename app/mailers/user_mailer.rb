class UserMailer < ApplicationMailer
  default from: Settings.config.mail_from_address

  def send_email(email, subject, message)
    @message = message
    mail(to: email, subject: subject) do |format|
      format.text { render 'send_email' }
    end
  end
end