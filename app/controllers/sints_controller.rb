class SintsController < ApplicationController
  before_action :set_sint, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /sints
  # GET /sints.json
  def index
    @sints = Sint.all
  end

  def ver
    @sints = Sint.all
  end

  # GET /sints/1
  # GET /sints/1.json
  def show
  end

  def all_sints
    @sints = Sint.all
  end

  # GET /sints/new
  def new
    @sint = Sint.new
  end

  # GET /sints/1/edit
  def edit
  end

  # POST /sints
  # POST /sints.json
  def create
    @sint = Sint.new(sint_params)

    respond_to do |format|
      if @sint.save
        format.html { redirect_to @sint, notice: 'Sint was successfully created.' }
        format.json { render :show, status: :created, location: @sint }
      else
        format.html { render :new }
        format.json { render json: @sint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sints/1
  # PATCH/PUT /sints/1.json
  def update
    respond_to do |format|
      if @sint.update(sint_params)
        format.html { redirect_to @sint, notice: 'Sint was successfully updated.' }
        format.json { render :show, status: :ok, location: @sint }
      else
        format.html { render :edit }
        format.json { render json: @sint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sints/1
  # DELETE /sints/1.json
  def destroy
    @sint.destroy
    respond_to do |format|
      format.html { redirect_to sints_url, notice: 'Sint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def discontinue
    Sint.where('id': params[:sint_ids]).update_all(selected: 'true')
    redirect_to sints_url
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sint
      @sint = Sint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sint_params
      params.require(:sint).permit(:nome_sintoma, :descricao, :user_id)
    end
end
