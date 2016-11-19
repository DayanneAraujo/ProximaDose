class DVaccinesController < ApplicationController
  before_action :set_d_vaccine, only: [:show, :edit, :update, :destroy]

  # GET /d_vaccines
  # GET /d_vaccines.json
  def index
    @d_vaccines = DVaccine.all
  end

  # GET /d_vaccines/1
  # GET /d_vaccines/1.json
  def show
  end

  # GET /d_vaccines/new
  def new
    @d_vaccine = DVaccine.new
  end

  # GET /d_vaccines/1/edit
  def edit
  end

  # POST /d_vaccines
  # POST /d_vaccines.json
  def create
    @d_vaccine = DVaccine.new(d_vaccine_params)

    respond_to do |format|
      if @d_vaccine.save
        format.html { redirect_to @d_vaccine, notice: 'D vaccine was successfully created.' }
        format.json { render :show, status: :created, location: @d_vaccine }
      else
        format.html { render :new }
        format.json { render json: @d_vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d_vaccines/1
  # PATCH/PUT /d_vaccines/1.json
  def update
    respond_to do |format|
      if @d_vaccine.update(d_vaccine_params)
        format.html { redirect_to @d_vaccine, notice: 'D vaccine was successfully updated.' }
        format.json { render :show, status: :ok, location: @d_vaccine }
      else
        format.html { render :edit }
        format.json { render json: @d_vaccine.errors, status: :unprocessable_entity }
      end
    end
  end

  def pending
    @d_vaccines = DVaccine.where('retake Between ? and ?', Date.today, 3.months.from_now)
    render 'list'
  end


  # DELETE /d_vaccines/1
  # DELETE /d_vaccines/1.json
  def destroy
    @d_vaccine.destroy
    respond_to do |format|
      format.html { redirect_to d_vaccines_url, notice: 'D vaccine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def list
    @d_vaccines = DVaccine.all
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d_vaccine
      @d_vaccine = DVaccine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d_vaccine_params
      params.require(:d_vaccine).permit(:vaccine, :date_taken, :retake)
    end
end
