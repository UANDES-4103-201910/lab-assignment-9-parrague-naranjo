class ShopingsController < ApplicationController
  before_action :set_shoping, only: [:show, :edit, :update, :destroy]

  def whatever

  end

  # GET /shopings
  # GET /shopings.json
  def index
    @shopings = Event.all
  end

  # GET /shopings/1
  # GET /shopings/1.json
  def show
  end

  # GET /shopings/new
  def new
    @events = Event.all
    @ticket_types = TicketType.all
  end

  # GET /shopings/1/edit
  def edit
  end

  # POST /shopings
  # POST /shopings.json
  def create
    @shoping = Shoping.new(shoping_params)

    respond_to do |format|
      if @shoping.save
        format.html { redirect_to @shoping, notice: 'Shoping was successfully created.' }
        format.json { render :show, status: :created, location: @shoping }
      else
        format.html { render :new }
        format.json { render json: @shoping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shopings/1
  # PATCH/PUT /shopings/1.json
  def update
    respond_to do |format|
      if @shoping.update(shoping_params)
        format.html { redirect_to @shoping, notice: 'Shoping was successfully updated.' }
        format.json { render :show, status: :ok, location: @shoping }
      else
        format.html { render :edit }
        format.json { render json: @shoping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopings/1
  # DELETE /shopings/1.json
  def destroy
    @shoping.destroy
    respond_to do |format|
      format.html { redirect_to shopings_url, notice: 'Shoping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoping
      @shoping = Shoping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shoping_params
      params.fetch(:shoping, {})
    end
end
