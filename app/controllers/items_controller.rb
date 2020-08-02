class ItemsController < ApplicationController
  # ログインしてない時にトップページへ強制的に飛ばすコード
  before_action :move_to_index, except: :index

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  #ストロングパラメータで！！！current_user.id)＝>デバイスを導入しているから使える
  def create
    Item.create(name: item_params[:name], price: item_params[:price], buy_day: item_params[:buy_day], stock_number: item_params[:stock_number], user_id: current_user.id)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :buy_day, :stock_number)
  end
end
