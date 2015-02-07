class CodeTypesController < ApplicationController
  before_action :set_code_type, only: [:show, :edit, :update, :destroy]

  # GET /code_types
  # GET /code_types.json
  def index
    @code_types = CodeType.all
  end

  # GET /code_types/1
  # GET /code_types/1.json
  def show
  end

  # GET /code_types/new
  def new
    @code_type = CodeType.new
  end

  # GET /code_types/1/edit
  def edit
  end

  # POST /code_types
  # POST /code_types.json
  def create
    @code_type = CodeType.new(code_type_params)

    respond_to do |format|
      if @code_type.save
        format.html { redirect_to @code_type, notice: 'Code type was successfully created.' }
        format.json { render :show, status: :created, location: @code_type }
      else
        format.html { render :new }
        format.json { render json: @code_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_types/1
  # PATCH/PUT /code_types/1.json
  def update
    respond_to do |format|
      if @code_type.update(code_type_params)
        format.html { redirect_to @code_type, notice: 'Code type was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_type }
      else
        format.html { render :edit }
        format.json { render json: @code_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_types/1
  # DELETE /code_types/1.json
  def destroy
    @code_type.destroy
    respond_to do |format|
      format.html { redirect_to code_types_url, notice: 'Code type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_type
      @code_type = CodeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_type_params
      params[:code_type]
    end
end
