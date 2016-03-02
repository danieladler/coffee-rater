class KaffiiController < ApplicationController

  def index
    @kaffiis = Kaffii.all
  end

  def show
    @kaffii = Kaffii.find(params[:id])
  end

  def create
    @kaffii = Kaffii.new
  end

  def add
    @kaffii = Kaffii.new
    @kaffii.name = params[:name]
    @kaffii.origin = params[:origin]
    @kaffii.roast = params[:roast]
    if @kaffii.save
      redirect_to root_path
    else
      render :create
    end
  end

end
