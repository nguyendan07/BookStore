class PublishersController < ApplicationController
  def new
    @page_title = 'Add New Publishers'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = "Successfully created..."
      redirect_to publishers_path
    else
      render 'new'
    end
  end

  def update
    @publisher = Publisher.find(params[:id])
    @publisher.updated(publisher_params)

    flash[:notice] = 'Publisher update...'
    redirect_to publishers_path
  end

  def edit
    @publisher = Publisher.find(params[:id])
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
    flash[:notice] = 'Publisher remove...'
    redirect_to publishers_path
  end

  def index
    @publishers = Publisher.all
  end

  def show
  end

  private
    def publisher_params
      params.require(:publisher).permit(:name)
    end
end
