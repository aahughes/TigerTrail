class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show

  end

# Adds a course to selected courses list and redirects to schedule page
  def add
    course = Course.find(params[:id])
    @course = CourseSchedule.new(course_id: course.id , schedule_id: current_student.schedules.first.id)

      respond_to do |format|
        if @course.save
          format.html { redirect_to my_schedule_path, notice: 'Course was successfully added.' }
          format.json { render :show, status: :created, location: @course }
        else
          #format.html { render :new }
          format.json { render json: @course.errors, status: :unprocessable_entity }
        end
      end
  end


# Removes or drops a course from schedule and redirects to schedule page
  def remove
    schedule = Schedule.find(params[:schedule_id])
    course = Course.find(params[:course_id])
    course_schedule = CourseSchedule.find_by(schedule_id: schedule.id, course_id: course.id)
    course_schedule.destroy
    respond_to do |format|
      format.html { redirect_to my_schedule_path, notice: 'Course was successfully removed.' }
      format.json { render :show, status: :created, location: @course }
    end
  end


# Register selected course(s) from schedule page and redirects to schedule page
   def register
    # Check if course is open before registering
    params[:course_ids].each do |courseid|
      course = Course.find(courseid)
      if course.status.name == "open"
        CourseSchedule.where(course_id: courseid).update(registered:true)
      end
    end
    
    respond_to do |format|
      format.html { redirect_to my_schedule_path, notice: 'Course was successfully registered.' }
      format.json { render :show, status: :created, location: @course }
    end
  end

# Search page; checks if logged in before loading page
  def search

    # Ensure student logged in before searching
    if current_student.nil?
      flash[:alert] = "You must be logged in to search."
      redirect_to new_student_session_path
    end

    # Define operators for credits field
    @operators = ["","exactly","less than","more than"]
  end


# Search database for all selected parameters
  def results

    # Set search conditions for each parameter, excluding blank ones (Semester cannot be blank)
    conditions = {}
    conditions[:subject_id] = params[:subject][:subject_id] unless params[:subject][:subject_id] == ""
    conditions[:building_id] = params[:building][:building_id] unless params[:building][:building_id] == ""
    conditions[:instructor_id] = params[:instructor][:instructor_id] unless params[:instructor][:instructor_id] == ""
    conditions[:campus_id] = params[:campus][:campus_id] unless params[:campus][:campus_id] == ""
    conditions[:status_id] = params[:status][:status_id] unless params[:status][:status_id] == ""
    conditions[:semester_id] = params[:semester][:semester_id]

      # Search conditions for credits set for exactly amount entered, more than amount (between amount and infinity), 
      # or less than amount (between 0 and amount)
    if params[:credits][:operator] == "exactly"
      conditions[:credits] = params[:credits][:number] unless params[:credits][:number] == ""
    elsif params[:credits][:operator] == "more than"
      conditions[:credits] = ((params[:credits][:number].to_f + 0.5)..Float::INFINITY) unless params[:credits][:number] == ""
    elsif params[:credits][:operator] == "less than"
      conditions[:credits] =(0...params[:credits][:number].to_f) unless params[:credits][:number] == ""
    end

    conditions[:course_number] = params[:course_number] unless params[:course_number] == ""


    # Search based on conditions set above
    @courses = Course.where(conditions)
    
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :course_number, :subject_id, :building_id, :instructor_id, :semester_id, :status_id, :campus_id)
    end
end
