class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(tsubuyaki_id: params[:tsubuyaki_id])
    redirect_to tsubuyakis_url, notice: "#{favorite.tsubuyaki.user.name}さんのブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to tsubuyakis_url, notice: "#{favorite.tsubuyaki.user.name}さんのブログをお気に入り解除しました"
  end
end