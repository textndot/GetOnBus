class UsersController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user
      redirect_to new_user_path, danger: '이미 가입된 이메일입니다.'
    else
      User.create(email: params[:email],
                password: params[:password],
                password_confirmation: params[:password_confirmation],
                teamname: params[:teamname],
                lecture: params[:lecture],
                start_date: params[:start_date],
                end_date: params[:end_date])
      redirect_to new_session_path, success: '가입완료되었습니다.'
    end
  end
end
