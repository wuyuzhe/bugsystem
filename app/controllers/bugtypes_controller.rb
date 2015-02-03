class BugtypesController < ApplicationController
  before_action :set_bugtype, only: [:show, :edit, :update, :destroy]

  # GET /bugtypes
  # GET /bugtypes.json
  def index
    @bugtypes = Bugtype.all
  end

  # GET /bugtypes/1
  # GET /bugtypes/1.json
  def show
  end

  # GET /bugtypes/new
  def new
    @bugtype = Bugtype.new
  end

  # GET /bugtypes/1/edit
  def edit
  end

  # POST /bugtypes
  # POST /bugtypes.json
  def create
    @bugtype = Bugtype.new(bugtype_params)

    respond_to do |format|
      if @bugtype.save
        format.html { redirect_to bugtypes_path, notice: 'Bugtype was successfully created.' }
        format.json { render :index, status: :created, location: @bugtype }
      else
        format.html { render :new }
        format.json { render json: @bugtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugtypes/1
  # PATCH/PUT /bugtypes/1.json
  def update
    respond_to do |format|
      if @bugtype.update(bugtype_params)
        format.html { redirect_to @bugtype, notice: 'Bugtype was successfully updated.' }
        format.json { render :index, status: :ok, location: @bugtype }
      else
        format.html { render :edit }
        format.json { render json: @bugtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugtypes/1
  # DELETE /bugtypes/1.json
  def destroy
    @bugtype.destroy
    respond_to do |format|
      format.html { redirect_to bugtypes_url, notice: 'Bugtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bugtype
      @bugtype = Bugtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bugtype_params
      params.require(:bugtype).permit(:typename)
    end
end
