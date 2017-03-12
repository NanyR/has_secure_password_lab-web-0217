class WelcomeController < ApplicationController
  before_action :require_login

  def home
      redirect_to login_path
  end

end
