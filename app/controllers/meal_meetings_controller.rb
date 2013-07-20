class MealMeetingsController < ApplicationController
  # GET /meal_meetings
  # GET /meal_meetings.json
  def index
    @meal_meetings = MealMeeting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @meal_meetings }
    end
  end

  # GET /meal_meetings/1
  # GET /meal_meetings/1.json
  def show
    @meal_meeting = MealMeeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @meal_meeting }
    end
  end

  # GET /meal_meetings/new
  # GET /meal_meetings/new.json
  def new
    @meal_meeting = MealMeeting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @meal_meeting }
    end
  end

  # GET /meal_meetings/1/edit
  def edit
    @meal_meeting = MealMeeting.find(params[:id])
  end

  # POST /meal_meetings
  # POST /meal_meetings.json
  def create
    @meal_meeting = MealMeeting.new(params[:meal_meeting])

    respond_to do |format|
      if @meal_meeting.save
        format.html { redirect_to @meal_meeting, notice: 'Meal meeting was successfully created.' }
        format.json { render json: @meal_meeting, status: :created, location: @meal_meeting }
      else
        format.html { render action: "new" }
        format.json { render json: @meal_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /meal_meetings/1
  # PUT /meal_meetings/1.json
  def update
    @meal_meeting = MealMeeting.find(params[:id])

    respond_to do |format|
      if @meal_meeting.update_attributes(params[:meal_meeting])
        format.html { redirect_to @meal_meeting, notice: 'Meal meeting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @meal_meeting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_meetings/1
  # DELETE /meal_meetings/1.json
  def destroy
    @meal_meeting = MealMeeting.find(params[:id])
    @meal_meeting.destroy

    respond_to do |format|
      format.html { redirect_to meal_meetings_url }
      format.json { head :no_content }
    end
  end
end
