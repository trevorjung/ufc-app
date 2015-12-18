class FightersController < ApplicationController

  def index
    @fighters = Fighter.all
  end

  def show
    @fighter = Fighter.find_by(id: params[:id])
  end

  def create
    @fighter = Fighter.create(first_name: params[:first_name], last_name: params[:last_name], weight_class: params[:weight_class], weight: params[:weight], current_record: params[:current_record], current_titles: params[:current_titles], hometown: params[:hometown])
  end

  def update
    @fighter = Fighter.find_by(id: params[:id])
    @fighter = Fighter.update(first_name: params[:first_name], last_name: params[:last_name], weight_class: params[:weight_class], weight: params[:weight], current_record: params[:current_record], current_titles: params[:current_titles], hometown: params[:hometown])

    render :show
  end

  def destroy
  end


end
