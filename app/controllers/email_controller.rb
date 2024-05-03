class EmailController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def send_email
    UserMailer.send_email(params[:email], params[:subject], params[:message]).deliver_later
    render json: { status: "Email sent!" }, status: :ok
  end

  private

  def email_params
    params.require(:email).permit(:email, :subject, :message)
  end
end
