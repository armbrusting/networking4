class FollowupsController < ApplicationController
  # GET /followups
  # GET /followups.json
  def index
    @followups = Followup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @followups }
    end
  end

  # GET /followups/1
  # GET /followups/1.json
  def show
    @followup = Followup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @followup }
    end
  end

  # GET /followups/new
  # GET /followups/new.json
  def new
    @followup = Followup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @followup }
    end
  end

  # GET /followups/1/edit
  def edit
    @followup = Followup.find(params[:id])
  end

  # POST /followups
  # POST /followups.json
  def create
    @followup = Followup.new(params[:followup])

    respond_to do |format|
      if @followup.save
        format.html { redirect_to @followup, notice: 'Followup was successfully created.' }
        format.json { render json: @followup, status: :created, location: @followup }
      else
        format.html { render action: "new" }
        format.json { render json: @followup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /followups/1
  # PUT /followups/1.json
  def update
    @followup = Followup.find(params[:id])

    respond_to do |format|
      if @followup.update_attributes(params[:followup])
        format.html { redirect_to @followup, notice: 'Followup was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @followup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followups/1
  # DELETE /followups/1.json
  def destroy
    @followup = Followup.find(params[:id])
    @followup.destroy

    respond_to do |format|
      format.html { redirect_to followups_url }
      format.json { head :ok }
    end
  end
end
