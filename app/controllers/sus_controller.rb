class SusController < ApplicationController
  # GET /sus
  # GET /sus.json
  def index
    @sus = Sus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sus }
    end
  end

  # GET /sus/1
  # GET /sus/1.json
  def show
    @su = Sus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @su }
    end
  end

  # GET /sus/new
  # GET /sus/new.json
  def new
    @su = Sus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @su }
    end
  end

  # GET /sus/1/edit
  def edit
    @su = Sus.find(params[:id])
  end

  # POST /sus
  # POST /sus.json
  def create
    @su = Sus.new(params[:su])

    respond_to do |format|
      if @su.save
        format.html { redirect_to @su, notice: 'Sus was successfully created.' }
        format.json { render json: @su, status: :created, location: @su }
      else
        format.html { render action: "new" }
        format.json { render json: @su.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sus/1
  # PUT /sus/1.json
  def update
    @su = Sus.find(params[:id])

    respond_to do |format|
      if @su.update_attributes(params[:su])
        format.html { redirect_to @su, notice: 'Sus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @su.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sus/1
  # DELETE /sus/1.json
  def destroy
    @su = Sus.find(params[:id])
    @su.destroy

    respond_to do |format|
      format.html { redirect_to sus_index_url }
      format.json { head :no_content }
    end
  end
end
