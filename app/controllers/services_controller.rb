class ServicesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
	load_and_authorize_resource

  def index
    @services = Service.all
    @categories = Category.all
    if params[:search]
			@services = Service.search(params[:search])
		else
			@services = Service.all
		end
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id

    # if @service.save
    #   redirect_to @service
    # else
    #   render 'new'
    # end
    if @service.save
			redirect_to services_path, notice: "Successfully added Service!"
		else
			render action: "new"
		end
  end

  def update
    @service = Service.find(params[:id])

    if @service.update(service_params)
      redirect_to @service
    else
      render 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to services_path
  end

  private
    def service_params
      params.require(:service).permit(:name, :price,:description)
    end
end
