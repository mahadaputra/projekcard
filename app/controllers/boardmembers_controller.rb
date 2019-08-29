class BoardmembersController < ApplicationController
  before_action :set_boardmember, only: [:show, :edit, :update, :destroy]

  # GET /boardmembers
  # GET /boardmembers.json
  def index
    @boardmembers = Boardmember.all
  end

  # GET /boardmembers/1
  # GET /boardmembers/1.json
  def show
  end

  # GET /boardmembers/new
  def new
    @boardmember = Boardmember.new
  end

  # GET /boardmembers/1/edit
  def edit
  end

  # POST /boardmembers
  # POST /boardmembers.json
  def create
    @boardmember = Boardmember.new(boardmember_params)

    respond_to do |format|
      if @boardmember.save
        format.html { redirect_to @boardmember, notice: 'Boardmember was successfully created.' }
        format.json { render :show, status: :created, location: @boardmember }
      else
        format.html { render :new }
        format.json { render json: @boardmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boardmembers/1
  # PATCH/PUT /boardmembers/1.json
  def update
    respond_to do |format|
      if @boardmember.update(boardmember_params)
        format.html { redirect_to @boardmember, notice: 'boardmember was successfully updated.' }
        format.json { render :show, status: :ok, location: @boardmember }
      else
        format.html { render :edit }
        format.json { render json: @boardmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boardmembers/1
  # DELETE /boardmembers/1.json
  def destroy
    @boardmember.destroy
    respond_to do |format|
      format.html { redirect_to boardmembers_url, notice: 'boardmember was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boardmember
      @boardmember = Boardmember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boardmember_params
      params.require(:boardmember).permit(:board_id, :user_id, :role)
    end
end