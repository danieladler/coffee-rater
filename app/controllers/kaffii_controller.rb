class KaffiiController < ApplicationController

  def index
    @kaffiis = Kaffii.all
  end

  def show
    @kaffii = Kaffii.find(params[:id])
  end

  def new
    @kaffii = Kaffii.new
  end

  def create
    @kaffii = Kaffii.new
    @kaffii.name = params[:kaffii][:name]
    @kaffii.origin = params[:kaffii][:origin]
    @kaffii.roast = params[:kaffii][:roast.downcase]
    if @kaffii.save
      redirect_to root_path
    else
      render :new
    end
  end

  def delete
    @kaffii = Kaffii.find(params[:id])
    @kaffii.destroy
    redirect_to root_path
  end

end
