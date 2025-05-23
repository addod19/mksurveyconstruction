class MachineRentalsController < ApplicationController
  before_action :set_machine_rental, only: %i[ show edit update destroy ]
  skip_authorization_check

  # GET /machine_rentals or /machine_rentals.json
  def index
    if params[:name_of_rentee].present?
      @machine_rentals = MachineRental.where("name_of_rentee ILIKE ?", "%#{params[:name_of_rentee]}%")
    else
      @machine_rentals = MachineRental.all
    end
  end

  # GET /machine_rentals/1 or /machine_rentals/1.json
  def show
  end

  # GET /machine_rentals/new
  def new
    @machine_rental = MachineRental.new
  end

  # GET /machine_rentals/1/edit
  def edit
  end

  # POST /machine_rentals or /machine_rentals.json
  def create
    @machine_rental = MachineRental.new(machine_rental_params)

    respond_to do |format|
      if @machine_rental.save
        format.html { redirect_to machine_rental_url(@machine_rental), notice: "Machine rental was successfully created." }
        format.json { render :show, status: :created, location: @machine_rental }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @machine_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_rentals/1 or /machine_rentals/1.json
  def update
    respond_to do |format|
      if @machine_rental.update(machine_rental_params)
        format.html { redirect_to machine_rental_url(@machine_rental), notice: "Machine rental was successfully updated." }
        format.json { render :show, status: :ok, location: @machine_rental }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @machine_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_rentals/1 or /machine_rentals/1.json
  def destroy
    @machine_rental.destroy!

    respond_to do |format|
      format.html { redirect_to machine_rentals_url, notice: "Machine rental was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_rental
      @machine_rental = MachineRental.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def machine_rental_params
      params.require(:machine_rental).permit(:serial_num, :color_of_machine, :name_of_rentee, :number_of_points, :amount_paid)
    end
end
