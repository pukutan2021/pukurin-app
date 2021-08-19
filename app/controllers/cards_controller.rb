class CardsController < ApplicationController
  def index
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    redirect_to root_path
  end

  private
  def card_params
    params.require(:card).permit(:title, :comment, :image).merge(user_id: current_user.id)
  end
end
