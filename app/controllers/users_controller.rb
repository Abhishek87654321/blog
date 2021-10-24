# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      redirect_to({ action: 'index' }, notice: 'User is successfully created')
    else
      redirect_to({ action: 'new' }, alert: 'Please retry')
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user.update(user_params)
      redirect_to({ action: 'index' }, notice: 'User is successfully updated')
    else
      redirect_to({ action: 'update' }, alert: 'Something went wrong! please retry')
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    redirect_to({ action: 'index' }, notice: 'User is successfully deleted') if @user.destroy!
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :mobile)
  end
end
