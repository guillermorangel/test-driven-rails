# frozen_string_literal: true

class ApplicationController < ActionController::Base
  delegate :signed_in?, to: :current_user

  def authenticate
    redirect_to new_session_path unless signed_in?
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

  def current_user
    User.new(session[:current_email])
  end
end
