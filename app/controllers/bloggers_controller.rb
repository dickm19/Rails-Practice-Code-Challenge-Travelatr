class BloggersController < ApplicationController
  before_action :find_blogger, only: [:show, :edit, :update, :destroy]
  
  def new
    @blogger = Blogger.new
  end

  def show

  end

  # def index
  #   @bloggers = blogger.all
  # end

  def edit

  end

  def create
    @blogger = Blogger.new(blogger_params)

    if @blogger.valid?
      @blogger.save
      redirect_to blogger_path(@blogger)
    else
      render :new
    end
  end

  def update
    if @blogger.update(blogger_params)
      redirect_to blogger_path(@blogger)
    else
      render :edit
    end
  end

  def destroy
    @blogger.destroy
    redirect_to bloggers_path
  end

  private

  def blogger_params
    params.require(:blogger).permit(:name, :bio, :age)
  end

  def find_blogger
    @blogger = Blogger.find(params[:id])
  end
end
