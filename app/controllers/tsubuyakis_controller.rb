class TsubuyakisController < ApplicationController
  before_action :set_tsubuyaki, only: [:show, :edit, :update, :destroy]
  
  def index
    @tsubuyakis = Tsubuyaki.all
  end
    
  def new
    if params[:back]
      @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
    else
      @tsubuyaki = Tsubuyaki.new
    end
  end
  
  def create
    @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
      if @tsubuyaki.save
        redirect_to tsubuyakis_path, notice: "投稿完了！"
      else
        render "new"
      end
  end
  
  def confirm
    @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
      if @tsubuyaki.invalid? 
        render 'new'
      end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @tsubuyaki.update(tsubuyaki_params)
      redirect_to tsubuyakis_path
    else
      render 'edit'
    end
  end
   
    
  def destroy
    @tsubuyaki.destroy
      redirect_to tsubuyakis_path, notice:"削除しました！"
  end
  
  private
  
  def tsubuyaki_params
  params.require(:tsubuyaki).permit(:content)
  end
    
  def set_tsubuyaki
  @tsubuyaki = Tsubuyaki.find(params[:id])
  end
  
end


