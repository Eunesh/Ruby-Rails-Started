class TestsController < ApplicationController

  # GET /tests
  def index
    @test = Test.all
    render json: @test
  end

  # POST /tests/
  def create
    @test = Test.new(test_params)
    if @test.save
      render json: @test, status: :created
    else
      render json: @user.errors
    end
  end

  # GET /tests/params
  def show
    @test = Test.find(params[:id])
    render json: @test
  end

  def update
    @test = Test.find(params[:id])
    @test.update(test_params)
    render json: @test
  end

  private

  # For requiring params inside tests and giving specific permit for paramss
  def test_params
    params.permit(:name, :info, :address)
  end
end
