class FuncsController < ApplicationController
  before_action :set_func, only: [:show, :edit, :update, :destroy]

  # GET /funcs
  # GET /funcs.json
  def index
    @funcs = Func.all
    #↖︎データを受け渡している

    idx = 0
    @data = []
    5.times do |i|
      idx += 1
      place = { "name" => "名前"}
      distance = 100
      @data[i] = "#{idx+1}: #{place['name']}: #{distance}m "
    end
  end

  # GET /funcs/1
  # GET /funcs/1.json
  def show
  end

  # GET /funcs/new
  def new
    @func = Func.new
  end

  # GET /funcs/1/edit
  def edit
  end

  # POST /funcs
  # POST /funcs.json
  def create
    @func = Func.new(func_params)

    respond_to do |format|
      if @func.save
        format.html { redirect_to @func, notice: 'Func was successfully created.' }
        format.json { render :show, status: :created, location: @func }
      else
        format.html { render :new }
        format.json { render json: @func.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funcs/1
  # PATCH/PUT /funcs/1.json
  def update
    respond_to do |format|
      if @func.update(func_params)
        format.html { redirect_to @func, notice: 'Func was successfully updated.' }
        format.json { render :show, status: :ok, location: @func }
      else
        format.html { render :edit }
        format.json { render json: @func.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funcs/1
  # DELETE /funcs/1.json
  def destroy
    @func.destroy
    respond_to do |format|
      format.html { redirect_to funcs_url, notice: 'Func was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_func
      @func = Func.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def func_params
      params.fetch(:func, {})
    end
end
