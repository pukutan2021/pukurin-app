class CardsController < ApplicationController
  before_action :set_card, only: [:edit, :update]

  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @card.update(card_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    redirect_to root_path
  end

  private
  def card_params
    params.require(:card).permit(:comment, images: []).merge(user_id: current_user.id)
  end

  def set_card
    @card = Card.find(params[:id])
  end
end
