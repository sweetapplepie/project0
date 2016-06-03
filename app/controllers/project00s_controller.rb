class Project00sController < ApplicationController
  before_action :set_project00, only: [:show, :edit, :update, :destroy]

  # GET /project00s
  # GET /project00s.json
  def index
    @project00s = Project00.all
  end

  # GET /project00s/1
  # GET /project00s/1.json
  def show
  end

  # GET /project00s/new
  def new
    @project00 = Project00.new
  end

  # GET /project00s/1/edit
  def edit
  end

  # POST /project00s
  # POST /project00s.json
  def create
    @project00 = Project00.new(project00_params)

    respond_to do |format|
      if @project00.save
        format.html { redirect_to @project00, notice: 'Project00 was successfully created.' }
        format.json { render :show, status: :created, location: @project00 }
      else
        format.html { render :new }
        format.json { render json: @project00.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project00s/1
  # PATCH/PUT /project00s/1.json
  def update
    respond_to do |format|
      if @project00.update(project00_params)
        format.html { redirect_to @project00, notice: 'Project00 was successfully updated.' }
        format.json { render :show, status: :ok, location: @project00 }
      else
        format.html { render :edit }
        format.json { render json: @project00.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project00s/1
  # DELETE /project00s/1.json
  def destroy
    @project00.destroy
    respond_to do |format|
      format.html { redirect_to project00s_url, notice: 'Project00 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project00
      @project00 = Project00.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project00_params
      params.fetch(:project00, {})
    end
end
