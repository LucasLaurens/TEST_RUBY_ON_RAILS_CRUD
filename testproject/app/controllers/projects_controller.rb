class ProjectsController < ApplicationController

    def index
        # Get all projects
        @projects = Project.all
    end

    def show
        # Get only one project
        @project = Project.find(params[:id])
    end

    def new
        # Get new form
        @project = Project.new
    end

    def create
        # Save a new project
        @new_project = Project.create(project_params)
        redirect_to projects_path
    end

    def edit
        # Get edit form
        @project = Project.find(params[:id])
    end

    def update
        # update a project
        @project = Project.find(params[:id])
        @project.update(project_params)
        redirect_to projects_path
    end

    def destroy
        # Delete one project
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to projects_path
    end

    private

    def project_params
        params.require(:project).permit(:name, :description)
    end



end