class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      username: params[:username],
      user_type_id: params[:user_type_id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone: params[:phone],
      birthday: params[:birthday]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.username = params[:username] || @user.username
    @user.user_type_id = params[:user_type_id] || @user.user_type_id
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.phone = params[:phone] || @user.phone
    @user.birthday = params[:birthday] || @user.birthday
    @user.save
    render "show.json.jb"
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: {message: "User successfully destroyed."}
  end

end
