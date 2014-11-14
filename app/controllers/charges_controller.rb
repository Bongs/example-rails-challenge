class ChargesController < ApplicationController
  # before_action :set_resources
  before_action :set_charge, only: [:show, :edit, :update, :destroy]

  # GET /charges
  # GET /charges.json
  def index
    @charges = Charge.all
    @successful_charges = Charge.successful
    @disputed_charges = Charge.disputed
    @failed_charges = Charge.failed
  end

  # GET /charges/1
  # GET /charges/1.json
  def show
    @chargeable = @charge.find_chargeable
  end

  # GET /charges/new
  def new
    @charge = Charge.new
  end

  # GET /charges/1/edit
  def edit
  end

  # POST /charges
  # POST /charges.json
  def create
    @charge = Charge.new(charge_params)

    respond_to do |format|
      if @charge.save
        format.html { redirect_to @charge, notice: 'Charge was successfully created.' }
        format.json { render :show, status: :created, location: @charge }
      else
        format.html { render :new }
        format.json { render json: @charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charges/1
  # PATCH/PUT /charges/1.json
  def update
    respond_to do |format|
      if @charge.update(charge_params)
        format.html { redirect_to @charge, notice: 'Charge was successfully updated.' }
        format.json { render :show, status: :ok, location: @charge }
      else
        format.html { render :edit }
        format.json { render json: @charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charges/1
  # DELETE /charges/1.json
  def destroy
    @charge.destroy
    respond_to do |format|
      format.html { redirect_to charges_url, notice: 'Charge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # def set_resources
    #   @chargeable = find_chargeable
    # end
    # Use callbacks to share common setup or constraints between actions.
    def set_charge
      @charge = Charge.find_by_unique_code(params[:unique_code])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charge_params
      params.require(:charge).permit(:amount, :unique_code, :paid, :refunded)
    end

    # def find_chargeable
    #   params.each do |name, value|
    #     if name =~ /(.+)_id$/
    #       return $1.classify.constantize.find(value)
    #     end
    #   end
    #   nil
    # end
end
