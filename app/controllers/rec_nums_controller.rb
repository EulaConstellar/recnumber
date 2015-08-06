class RecNumsController < ApplicationController
  before_action :set_rec_num, only: [:show, :edit, :update, :destroy]

  # GET /rec_nums
  # GET /rec_nums.json
  def index
    @rec_nums = RecNum.all
  end

  # GET /rec_nums/1
  # GET /rec_nums/1.json
  def show
  end

  # GET /rec_nums/new
  def new
    @rec_num = RecNum.new
  end

  # GET /rec_nums/1/edit
  def edit
  end

  # POST /rec_nums
  # POST /rec_nums.json
  def create
    @rec_num = RecNum.new(rec_num_params)

    respond_to do |format|
      if @rec_num.save
        format.html { redirect_to @rec_num, notice: 'Rec num was successfully created.' }
        format.json { render :show, status: :created, location: @rec_num }
      else
        format.html { render :new }
        format.json { render json: @rec_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rec_nums/1
  # PATCH/PUT /rec_nums/1.json
  def update
    respond_to do |format|
      if @rec_num.update(rec_num_params)
        format.html { redirect_to @rec_num, notice: 'Rec num was successfully updated.' }
        format.json { render :show, status: :ok, location: @rec_num }
      else
        format.html { render :edit }
        format.json { render json: @rec_num.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rec_nums/1
  # DELETE /rec_nums/1.json
  def destroy
    @rec_num.destroy
    respond_to do |format|
      format.html { redirect_to rec_nums_url, notice: 'Rec num was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rec_num
      @rec_num = RecNum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rec_num_params
      params.require(:rec_num).permit(:number)
    end
end
