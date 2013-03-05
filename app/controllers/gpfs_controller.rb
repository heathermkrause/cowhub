class GpfsController < ApplicationController
  # GET /gpfs
  # GET /gpfs.json
  def index
    @gpfs = Gpf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gpfs }
    end
  end

  # GET /gpfs/1
  # GET /gpfs/1.json
  def show
    @gpf = Gpf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gpf }
    end
  end

  # GET /gpfs/new
  # GET /gpfs/new.json
  def new
    @gpf = Gpf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gpf }
    end
  end

  # GET /gpfs/1/edit
  def edit
    @gpf = Gpf.find(params[:id])
  end

  # POST /gpfs
  # POST /gpfs.json
  def create
    @gpf = Gpf.new(params[:gpf])

    respond_to do |format|
      if @gpf.save
        format.html { redirect_to @gpf, notice: 'Gpf was successfully created.' }
        format.json { render json: @gpf, status: :created, location: @gpf }
      else
        format.html { render action: "new" }
        format.json { render json: @gpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gpfs/1
  # PUT /gpfs/1.json
  def update
    @gpf = Gpf.find(params[:id])

    respond_to do |format|
      if @gpf.update_attributes(params[:gpf])
        format.html { redirect_to @gpf, notice: 'Gpf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gpf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gpfs/1
  # DELETE /gpfs/1.json
  def destroy
    @gpf = Gpf.find(params[:id])
    @gpf.destroy

    respond_to do |format|
      format.html { redirect_to gpfs_url }
      format.json { head :no_content }
    end
  end
end
