class RequestEquipmetsController < ApplicationController
  before_action :set_request_equipmet, only: %i[ show edit update destroy ]

  # GET /request_equipmets or /request_equipmets.json
  def index
    @request_equipmets = RequestEquipmet.all
  end

  # GET /request_equipmets/1 or /request_equipmets/1.json
  def show
  end

  # GET /request_equipmets/new
  def new
    @uname = params[:name]
    @equip = params[:eqname]
    @incharge = params[:fcharge]
    @eqid = params[:eid]
    @request_equipmet = RequestEquipmet.new

  end

  # GET /request_equipmets/1/edit
  def edit
  end

  def updatereq

    @r=RequestEquipmet.find_by_id(params[:format])
    @u=@r.equipment_id
    @s=Equipment.find_by_equipment_id(@u)
    @p = @r.no_of_units
    @q = @s.no_in_use + @p
    if @q<=@s.no_available
      @s.no_in_use = @q
    end
    @s.save

  end
  # POST /request_equipmets or /request_equipmets.json
  def create
    @request_equipmet = RequestEquipmet.new(request_equipmet_params)

    respond_to do |format|
      if @request_equipmet.save
        format.html { redirect_to request_equipmet_url(@request_equipmet), notice: "Request equipmet was successfully created." }
        format.json { render :show, status: :created, location: @request_equipmet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @request_equipmet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_equipmets/1 or /request_equipmets/1.json
  def update
    respond_to do |format|
      if @request_equipmet.update(request_equipmet_params)
        format.html { redirect_to request_equipmet_url(@request_equipmet), notice: "Request equipmet was successfully updated." }
        format.json { render :show, status: :ok, location: @request_equipmet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @request_equipmet.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /request_equipmets/1 or /request_equipmets/1.json
  def destroy
    @request_equipmet.destroy

    respond_to do |format|
      format.html { redirect_to request_equipmets_url, notice: "Request equipmet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_equipmet
      @request_equipmet = RequestEquipmet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_equipmet_params
      params.require(:request_equipmet).permit(:username, :equipment, :no_of_units, :faculty_in_charge, :equipment_id)
    end
end
