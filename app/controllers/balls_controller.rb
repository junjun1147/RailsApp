class BallsController < ApplicationController
  def index
    @balls = Ball.all.order(created_at: :desc)
  end
  
  
  
  def show
    @ball = Ball.find_by(id: params[:id])
  end
  
  
  
  def new
    @ball = Ball.new
  end
  
  
  
 def create
   @ball = Ball.new(content: params[:content])
   if @ball.save
     flash[:notice] = "投稿を作成しました"
     redirect_to("/balls/index")
   else
     render("balls/new")
   end
 end
  
  
  def edit
    @ball = Ball.find_by(id: params[:id])
  end
  
  
  
  def update
    @ball = Ball.find_by(id: params[:id])
    @ball.content = params[:content]
    if @ball.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/balls/index")
    else
      render("balls/edit")
    end
  end
  
  
  
  def destroy
    @ball = Ball.find_by(id: params[:id])
    @ball.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/balls/index")
  end
  
  
end
