class CodebugsController < ApplicationController
  before_filter :signed_in_filter
  before_action :set_codebug, only: [:show, :edit, :update, :destroy]
  def index
    if params.key? :title
      @codebugs = Codebug.where(" title like '%#{params[:title]}%'").paginate(page:params[:page],per_page:10)
    else
      @codebugs = Codebug.paginate(page:params[:page],per_page:10)
    end
  end
  def show
  end
  def new
    @codebug = Codebug.new
  end
  def edit
  end
  def create
    @codebug = Codebug.new(codebug_params)
    respond_to do |format|
      if @codebug.save
        format.html { redirect_to @codebug, notice: 'Codebug was successfully created.' }
        format.json { render :show, status: :created, location: @codebug }
      else
        format.html { render :new }
        format.json { render json: @codebug.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @codebug.update(codebug_params)
        format.html { redirect_to @codebug, notice: 'Codebug was successfully updated.' }
        format.json { render :show, status: :ok, location: @codebug }
      else
        format.html { render :edit }
        format.json { render json: @codebug.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @codebug.destroy
    respond_to do |format|
      format.html { redirect_to codebugs_url, notice: 'Codebug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    def set_codebug
      @codebug = Codebug.find(params[:id])
    end
    def codebug_params
      params.require(:codebug).permit(:title,:description, :content)
    end
end
