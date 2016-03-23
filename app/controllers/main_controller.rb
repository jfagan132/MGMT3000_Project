class MainController < ApplicationController
  def home
    @task = current_user.tasks.build if logged_in?
  end
end
