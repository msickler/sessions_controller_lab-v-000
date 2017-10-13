class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:username].nil? || params[:username].empty?
      redirect_to '/new'
    else
      session[:username] = params[:username]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
    redirect_to '/new'
  end
end
