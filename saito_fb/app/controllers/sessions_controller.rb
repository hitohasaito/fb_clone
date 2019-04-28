class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email:params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id #パスワードが一致していたら、セッションにユーザーIDを代入
      redirect_to user_path(user.id)#詳細画面にリダイレクトして表示
    else
      flash.now[:danger]="ログインに失敗しました"
      render "new"
    end
  end
  def destroy
    session.delete(:user_id)
    flash[:notice] = "ログアウトしました"
    redirect_to new_session_path
  end
end
