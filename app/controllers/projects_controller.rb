class ProjectsController < ApplicationController
	before_action :logged_in_user, only: [:index, :new, :edit, :destroy]
	before_action :admin_user, only: [:edit, :destroy, :new]

	def new
		@project = Project.new
	end 

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:success] = "New project created!"
			redirect_to projects_path
		else 
			flash[:error] = "Errors!"
			render 'new'
		end 
	end 

	def show
		@project = Project.find(params[:id])
		respond_to do |format|
			format.js
		end 
	end 

	def index
		@projects = Project.all
	end 

	def edit
		@project = Project.find(params[:id])
	end 

	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(project_params)
			flash[:success] = "Project \"" + @project.title + "\" updated!"
			redirect_to projects_path
		else 
			flash[:error] = "Errors!"
			render 'edit'
		end 
	end 

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		flash[:success] = "Project \"" + @project.title + "\" deleted!"
		redirect_to projects_path
	end 


	private
	def project_params
		params.require(:project).permit(:title, :description, :documentation)
	end 
end
