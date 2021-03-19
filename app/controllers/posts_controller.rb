class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find_by(id:params[:id])
  end
  
  def new
  end
  
  def create
    @post = Post.new(
      title: params[:title],
      content: params[:content],
      answer: params[:answer]
      )
    if @post.save
    flash[:notice] = "投稿を作成しました"
    redirect_to("/posts/index")
    end
  end
  
  def answer
    @answer = params[:answer]
    @answer_log = Post.find_by(answer: @answer)
    
    if @answer_log
    flash[:notice] = "正解！"
      redirect_to("/posts/index")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
    end
  end
  
end
