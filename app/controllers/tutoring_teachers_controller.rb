class TutoringTeachersController < ApplicationController
  before_action :set_tutoring_teacher, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_member!

  # GET /tutoring_teachers
  # GET /tutoring_teachers.json
  def index
    @tutoring_teachers = TutoringTeacher.all
  end

  # GET /tutoring_teachers/1
  # GET /tutoring_teachers/1.json
  def show
  end

  # GET /tutoring_teachers/new
  def new
    @tutoring_teacher = TutoringTeacher.new
  end

  # GET /tutoring_teachers/1/edit
  def edit
  end

  # POST /tutoring_teachers
  # POST /tutoring_teachers.json
  def create
    @tutoring_teacher = TutoringTeacher.new(tutoring_teacher_params)
    @tutoring_teacher.member = current_member
    respond_to do |format|
      if @tutoring_teacher.save
        format.html { redirect_to @tutoring_teacher, notice: 'Tutoring teacher was successfully created.' }
        format.json { render :show, status: :created, location: @tutoring_teacher }
      else
        format.html { render :new }
        format.json { render json: @tutoring_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutoring_teachers/1
  # PATCH/PUT /tutoring_teachers/1.json
  def update
    respond_to do |format|
      if @tutoring_teacher.update(tutoring_teacher_params)
        format.html { redirect_to @tutoring_teacher, notice: 'Tutoring teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutoring_teacher }
      else
        format.html { render :edit }
        format.json { render json: @tutoring_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutoring_teachers/1
  # DELETE /tutoring_teachers/1.json
  def destroy
    @tutoring_teacher.destroy
    respond_to do |format|
      format.html { redirect_to tutoring_teachers_url, notice: 'Tutoring teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutoring_teacher
      @tutoring_teacher = TutoringTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutoring_teacher_params
      params.require(:tutoring_teacher).permit( :note, :date, :member_name)
    end
end
