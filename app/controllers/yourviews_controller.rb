class YourviewsController < ApplicationController
  before_action :set_yourview, only: [:show, :edit, :update, :destroy]

  # GET /yourviews
  # GET /yourviews.json
  def index
    @yourviews = Yourview.all
  end

  # GET /yourviews/1
  # GET /yourviews/1.json
  def show
  end

  # GET /yourviews/new
  def new
    @yourview = Yourview.new
  end

  # GET /yourviews/1/edit
  def edit
  end

  # POST /yourviews
  # POST /yourviews.json
  def create
    @yourview = Yourview.new(yourview_params)

    respond_to do |format|
      if @yourview.save
        format.html { redirect_to @yourview, notice: 'Yourview was successfully created.' }
        format.json { render :show, status: :created, location: @yourview }
      else
        format.html { render :new }
        format.json { render json: @yourview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yourviews/1
  # PATCH/PUT /yourviews/1.json
  def update
    respond_to do |format|
      if @yourview.update(yourview_params)
        format.html { redirect_to @yourview, notice: 'Yourview was successfully updated.' }
        format.json { render :show, status: :ok, location: @yourview }
      else
        format.html { render :edit }
        format.json { render json: @yourview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yourviews/1
  # DELETE /yourviews/1.json
  def destroy
    @yourview.destroy
    respond_to do |format|
      format.html { redirect_to yourviews_url, notice: 'Yourview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yourview
      @yourview = Yourview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yourview_params
      params.require(:yourview).permit(:post_id, :body)
    end
end
