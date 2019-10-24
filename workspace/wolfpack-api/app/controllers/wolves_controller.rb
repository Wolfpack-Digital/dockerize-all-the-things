# frozen_string_literal: true

class WolvesController < ApplicationController
  before_action :set_wolf, only: %i[show update destroy]

  def index
    @wolves = Wolf.all

    paginate json: @wolves
  end

  def show
    render json: @wolf
  end

  def create
    @wolf = Wolf.new(wolf_params)

    if @wolf.save
      NotifyWorker.perform_async(@wolf.name)

      render json: @wolf, status: :created, location: @wolf
    else
      render json: @wolf.errors, status: :unprocessable_entity
    end
  end

  def update
    if @wolf.update(wolf_params)
      render json: @wolf
    else
      render json: @wolf.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @wolf.destroy
  end

  private

  def set_wolf
    @wolf = Wolf.find(params[:id])
  end

  def wolf_params
    params.require(:wolf).permit(:name, :age, :alpha, :description, :avatar, :tags)
  end
end
