class SessionsController < ApplicationController
  def new
    @session = Session.new
  end

  def index
    @sessions = Session.all
  end

  def create
    @session = Session.new(session_params)
      if @session.save
        redirect_to sessions_path
        flash[:notice] = "Evaluation session created."
      else
        render 'new'
        flash[:notice] = "Evaluation session not created. Please correct errors."
      end
  end

  def show
    @session = Session.find(params[:id])
    @item = Item.new
    @items = @session.items
    @convert = {"Awful" => 8, "Poor" => 28, "Okay" => 58, "Great" => 84, "Outstanding" => 96, "unused" => 0 }
    #count = 1
    #while count <= 12

    #end
    #@score = 96.0
  end

  private
    def session_params
      params.require(:session).permit(:name, :description, :item_type, :criterion_1, :criterion_2, :criterion_3, :criterion_4, :criterion_5, :criterion_6, :criterion_7, :criterion_8, :criterion_9, :criterion_10, :criterion_11, :criterion_12)
    end
end
