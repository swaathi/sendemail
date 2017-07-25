class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: :home

  def home
    redirect_to emails_path if user_signed_in?
  end
end
