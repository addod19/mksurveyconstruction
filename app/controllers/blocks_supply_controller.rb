class BlocksSupplyController < ApplicationController
  skip_authorization_check
  def index
    @admin_blocks_supply = BlockSupply.all
  end

  def create
    # current_user
    @block_supply = BlockSupply.build(blocks_supply_params)
    # only admin can enter blocks supply data
    if @block_supply.save
      flash[:success] = "Your post has been created!"
      redirect_to blocks_supply_index_path
    else
      flash[:alert] = "Your new block supply data couldn't be created!  Please check the form."
      render 'new'
    end
  end

  def new
    @block_supply = BlockSupply.new
  end

  def destroy
    @blocks_supply = BlockSupply.find(params[:id])
    @blocks_supply.destroy
    redirect_to blocks_supply_path
  end

  private

  def blocks_supply_params
    params.require(:block_supply).permit(:name, :type_of_blocks, :number_of_blocks, :contact, :payment, :balance )
  end
end
