class PoolsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pools = Pool.all
  end

  def show
  end

  def new
    @pool = Pool.new
  end

  def create
    @pool = Pool.new(pool_params)
    if @pool.save
      redirect_to pool_path(@pool)
    else
      render :new
    end
  end

  private

  def pool_params
    params.require(:pool).permit(:location, :description, :photo)
  end
end
