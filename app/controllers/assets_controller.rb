class AssetsController < ApplicationController

  def create
    @sale = Sale.find params[:sale_id]
    @asset = @sale.assets.build asset_params

    if @asset.save
      redirect_to @sale, notice: "File was successfully uploaded."
    else
      redirect_to @sale, alert: "File was not uploaded."
    end
  end



  def asset_params
    params.require(:asset).permit(:file)
  end

end