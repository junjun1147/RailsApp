class FootsController < ApplicationController
  def index
    @foots = Foot.all.order(created_at: :desc)
  end
  
  
  
  def show
    @foot = Foot.find_by(id: params[:id])
  end
  
  
  
  def new
    @foot = Foot.new
  end
  
  
  
 def create
   @foot = Foot.new(content: params[:content])
   if @foot.save
     flash[:notice] = "投稿を作成しました"
     redirect_to("/foots/index")
   else
     render("foots/new")
   end
 end
  
  
  def edit
    @foot = Foot.find_by(id: params[:id])
  end
  
  
  
  def update
    @foot = Foot.find_by(id: params[:id])
    @foot.content = params[:content]
    if @foot.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/foots/index")
    else
      render("foots/edit")
    end
  end
  
  
  
  def destroy
    @foot = Foot.find_by(id: params[:id])
    @foot.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/foots/index")
  end
  
  
end
