class TasksController < ApplicationController
    before_action :logged_in_user, only: [:create, :index, :destroy]
    before_action :admin_user, only: [:destroy]
    

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      flash[:success] = "Task created!"
      redirect_to root_url
    else
      render 'main/home'
    end
  end
  
    def index
        @tasks = Task.paginate(page: params[:page])
    end

  def destroy
    Task.find(params[:id]).destroy
    flash[:success] = "Micropost deleted"
    redirect_to :back
  end
  
  def complete
    task = Task.find(params[:id])
    task.is_complete = true 
    task.save
    flash[:success] = "Task marked complete"
    redirect_to :back
  end
  
  def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

  private

    def task_params
      params.require(:task).permit(:content, :priority, :is_complete)
    end
    
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
