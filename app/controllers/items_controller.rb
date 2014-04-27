class ItemsController < ApplicationController
  def new
    @session = Session.find(params[:session_id])
    @item = @session.items.build
  end

  def index
    @session = Session.find(params[:session_id]).include([:items])
    @items = @session.items
  end

  def create
    @session = Session.find(params[:session_id])
    @item = @session.items.build(item_params)
      if @item.save
        redirect_to new_session_item_path
        flash[:notice] = "Item created."
      else
        render 'new'
      end
  end

  private
    def item_params
      params.require(:item).permit(:name, :type, :grouping_1, :grouping_2, :grouping_3, :grouping_4, :grouping_5, :grouping_6, :grouping_7, :grouping_8, :grouping_9, :grouping_10, :grouping_11, :grouping_12).merge(session_id: params[:session_id])
    end
end
