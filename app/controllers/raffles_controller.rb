class RafflesController < ApplicationController
  before_action :set_raffle, only: [:show, :edit, :update, :destroy]
  before_filter :check_if_admin

  def read_card

    id = raffle_params[:card]
    id[0] = ""
    id = id.split("?")
    if Member.find_by(["student_id = ?", id[0]])
    @member = Member.find_by(["student_id = ?", id[0]])
    @raffle = Raffle.new(date: Date.today(), member_id: @member.id )
    redirect_to read_raffles_url, notice: @member.first_name + " " + @member.last_name 
    else
    redirect_to read_raffles_url, notice: "User not found"
    end
  end

  def read
    
  end

  # GET /raffles
  # GET /raffles.json
  def index
    @raffles = Raffle.all
  end

  # GET /raffles/1
  # GET /raffles/1.json
  def show
  end

  # GET /raffles/new
  def new
    @raffle = Raffle.new
  end

  # GET /raffles/1/edit
  def edit
  end

  # POST /raffles
  # POST /raffles.json
  def create

    @raffle = Raffle.new(raffle_params)

    respond_to do |format|
      if @raffle.save
        format.html { redirect_to @raffle, notice: 'Raffle was successfully created.' }
        format.json { render :show, status: :created, location: @raffle }
      else
        format.html { render :new }
        format.json { render json: @raffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raffles/1
  # PATCH/PUT /raffles/1.json
  def update
    respond_to do |format|
      if @raffle.update(raffle_params)
        format.html { redirect_to @raffle, notice: 'Raffle was successfully updated.' }
        format.json { render :show, status: :ok, location: @raffle }
      else
        format.html { render :edit }
        format.json { render json: @raffle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raffles/1
  # DELETE /raffles/1.json
  def destroy
    @raffle.destroy
    respond_to do |format|
      format.html { redirect_to raffles_url, notice: 'Raffle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raffle
      @raffle = Raffle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raffle_params
      params.permit(:card)
    end


    def check_if_admin
      if signed_in?
        raise 'Shoo! THIS IS FOR ADMINS ONLY!!' unless current_member.is_admin?
      else
        authenticate_member!
      end
    end
end
