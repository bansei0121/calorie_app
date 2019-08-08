class CalculationController < ApplicationController
  def index
    @foods = Food.all
    @total_calorie = 0
  end
  
  def search
    @foods = Food.where(['name LIKE ?', "%#{params[:search]}%"])
    @total_calorie = 0
    render :index
  end
end
