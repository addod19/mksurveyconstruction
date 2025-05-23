class LoadersController < ApplicationController
  before_action :set_loader, only: %i[ show edit update destroy ]
  skip_authorization_check

  # GET /loaders or /loaders.json
  def index
    if params[:job_date].present?
      @loaders = Loader.where(job_date: params[:job_date])
    else
      @loaders = Loader.all
    end
  end

  # GET /loaders/1 or /loaders/1.json
  def show
  end

  # GET /loaders/new
  def new
    @loader = Loader.new
  end

  # GET /loaders/1/edit
  def edit
  end

  # POST /loaders or /loaders.json
  def create
    @loader = Loader.new(loader_params)

    respond_to do |format|
      if @loader.save
        format.html { redirect_to loader_url(@loader), notice: "Loader was successfully created." }
        format.json { render :show, status: :created, location: @loader }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loaders/1 or /loaders/1.json
  def update
    respond_to do |format|
      if @loader.update(loader_params)
        format.html { redirect_to loader_url(@loader), notice: "Loader was successfully updated." }
        format.json { render :show, status: :ok, location: @loader }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loaders/1 or /loaders/1.json
  def destroy
    @loader.destroy!

    respond_to do |format|
      format.html { redirect_to loaders_url, notice: "Loader was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loader
      @loader = Loader.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loader_params
      params.require(:loader).permit(:job_date, :name_of_client, :amount_charged, :fuel, :balance)
    end
end
