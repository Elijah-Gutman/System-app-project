class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      cookies.signed[:user_id] = { value: user.id }.merge(cookie_settings)
      render json: { email: user.email, user_id: user.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    cookies.delete(:user_id)
    render json: { message: "Logged out successfully" }
  end
end

private

def cookie_settings
  if Rails.env.test?
    { httponly: true }
  else
    { httponly: true, secure: true, same_site: "None" }
  end
end
