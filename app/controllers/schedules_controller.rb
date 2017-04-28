class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
    

  end


# Show page with student's schedule (both temporarily selected and registered classes)
  def myschedule

    # Check if logged-in student before loading page. If not, go to login page.
    if current_student.nil?
      redirect_to new_student_session_path
    else

      # Show all selected courses in current semeseter's schedule
      @schedule = current_student.schedules.first
      @temp_courses = []
      if !@schedule.course_schedules.find_by(registered: false).nil?
        @schedule.course_schedules.where(registered: false).each do |course_schedule| 
          @temp_courses << Course.find(course_schedule.course_id)
        end
      end

      # Show all registered courses in current semeseter's schedule
      @registered_courses = []
      if !@schedule.course_schedules.find_by(registered: true).nil?
        @schedule.course_schedules.where(registered: true).each do |course_schedule|
          @registered_courses << Course.find(course_schedule.course_id)
        end
      end
    end
  end


# Get JSON data for all of a student's registered courses, getting data for each individual CourseDay as a separate event
  def registeredCoursesJSON
    @jsonData = []
    @schedule = current_student.schedules.first
    @registered_courses = []

    # Find all registered courses in student's schedule
    if !@schedule.course_schedules.find_by(registered: true).nil?
      @schedule.course_schedules.where(registered: true).each do |course_schedule|
        @registered_courses << Course.find(course_schedule.course_id)
      end
    end

    # Set variables with today's date
    year = Date.today.strftime("%Y").to_i
    month = Date.today.strftime("%m").to_i
    today = Date.today

    #Dates of this week from Monday to Sunday
    days = (today.at_beginning_of_week..today.at_end_of_week).map
    weekdays = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]

    # Array of colors to assign to each distinct course
    colors = ["#ffd4e5","#1b85b8","#baffc9","#bae1ff", "#ffb3ba","#ffdfba","#ffffba","#f1cbff"]

    # Go through each registered course, assigning it an index for a unique color
    @registered_courses.each_with_index do |course,index|

      # Go through each day of the registered course, getting data for that courseday
      course.course_days.each do |courseday|
        #Find the day of this week corresponding to the listed weekday of the CourseDay
        weekday = days.to_a[weekdays.index(courseday.day.name)]

        event = {}
        event["title"] = course.name
        # Make the start date of the event the day set above, then set time in hours and minutes
        event["start"] = DateTime.new(year,month,weekday.day,courseday.start.hour,courseday.start.min)
        event["end"] = DateTime.new(year,month,weekday.day,courseday.end.hour,courseday.end.min)
        event["location"] = course.room_number + " " + course.building.name
        event["backgroundColor"] = colors[index]

        # Append the data for this courseday to the jsonData array
        @jsonData<<event
      end
    end
  end


# The same as registeredCoursesJSON, but also include selected, non-registered courses
  def tempCoursesJSON
    @jsonData = []
    @schedule = current_student.schedules.first
    @all_courses = []
    if !@schedule.course_schedules.nil?
      @schedule.course_schedules.each do |course_schedule|
        @all_courses << Course.find(course_schedule.course_id)
      end
    end
    year = Date.today.strftime("%Y").to_i
    month = Date.today.strftime("%m").to_i
    today = Date.today
    #Dates of this week from Monday to Sunday
    days = (today.at_beginning_of_week..today.at_end_of_week).map
    weekdays = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    colors = ["#ffd4e5","#1b85b8","#baffc9","#bae1ff", "#ffb3ba","#ffdfba","#ffffba","#f1cbff"]

 
    @all_courses.each_with_index do |course,index|
      course.course_days.each do |courseday|
        weekday = days.to_a[weekdays.index(courseday.day.name)]

        event = {}
        event["title"] = course.name
        event["start"] = DateTime.new(year,month,weekday.day,courseday.start.hour,courseday.start.min)
        event["end"] = DateTime.new(year,month,weekday.day,courseday.end.hour,courseday.end.min)
        event["location"] = course.room_number + " " + course.building.name
        event["backgroundColor"] = colors[index]
        @jsonData<<event
      end
    end
  end


  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    respond_to do |format|
      if @schedule.save
        format.html { redirect_to @schedule, notice: 'Schedule was successfully created.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:student_id, :semester_id)
    end
end
