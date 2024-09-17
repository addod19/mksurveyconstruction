class BlocksSupplyController < ApplicationController
  skip_authorization_check
  def index
    @admin_blocks_supply = BlockSupply.where(admin_id: ids).order(id: :desc)
  end

  def create
    @block_supply = blocks_supply.build(blocks_supply_params)
    # only admin can enter blocks supply data
    @block_supply.save
    redirect_to blocks_supply_path
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
    params.require(:blocks_supply).permit(:name, :type_of_blocks, :number_of_blocks, :contact, :payment, :balance )
  end
end
