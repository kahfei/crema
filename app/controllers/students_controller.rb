class StudentsController < ApplicationController
  before_action :signed_in_user
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
    @subjects = Subject.all
    # generate registration number based on last student id, if it is the first ever student, "PLN-000001"
    if Student.any? 
      @registration_number = Student.last.generate_registration_number
    else
      @registration_number = "PLN-000001"
    end
  end

  # GET /students/1/edit
  def edit
    @subjects = Subject.all
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)


    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
      else
        # when student creation fail validation, creation action render new action,
        # problem is, "create" don't have @subjects = Subject.all, "each" in view will
        # fail nil class error
        @subjects = Subject.all 
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :registration_number, :email, :mobile, :school, :tuition_fee, :subject_ids => [])
    end
end
