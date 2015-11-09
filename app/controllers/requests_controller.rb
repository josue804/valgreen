class RequestsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    binding.pry
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def request_params
    params.require("request").permit(:name, :phone, :email, :address, :square_footage, :description)
  end
end
