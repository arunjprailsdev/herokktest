class PdoductsController < ApplicationController
  before_action :set_pdoduct, only: [:show, :edit, :update, :destroy]

  # GET /pdoducts
  # GET /pdoducts.json
  def index
    @pdoducts = Pdoduct.all
  end

  # GET /pdoducts/1
  # GET /pdoducts/1.json
  def show
  end

  # GET /pdoducts/new
  def new
    @pdoduct = Pdoduct.new
  end

  # GET /pdoducts/1/edit
  def edit
  end

  # POST /pdoducts
  # POST /pdoducts.json
  def create
    @pdoduct = Pdoduct.new(pdoduct_params)

    respond_to do |format|
      if @pdoduct.save
        format.html { redirect_to @pdoduct, notice: 'Pdoduct was successfully created.' }
        format.json { render :show, status: :created, location: @pdoduct }
      else
        format.html { render :new }
        format.json { render json: @pdoduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pdoducts/1
  # PATCH/PUT /pdoducts/1.json
  def update
    respond_to do |format|
      if @pdoduct.update(pdoduct_params)
        format.html { redirect_to @pdoduct, notice: 'Pdoduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdoduct }
      else
        format.html { render :edit }
        format.json { render json: @pdoduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdoducts/1
  # DELETE /pdoducts/1.json
  def destroy
    @pdoduct.destroy
    respond_to do |format|
      format.html { redirect_to pdoducts_url, notice: 'Pdoduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdoduct
      @pdoduct = Pdoduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdoduct_params
      params.require(:pdoduct).permit(:title)
    end
end
