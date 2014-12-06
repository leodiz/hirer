class ResumesController < ApplicationController
  def index
  end

  def search
    @resumes = Resume.includes(emp: :photo).search(params[:skills], params[:city])
  end

  def new
  end

  def create
  end

  def show
    @resume = Resume.find(params[:id])
  end
end
