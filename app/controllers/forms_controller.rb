#forms_controller

class FormsController < ApplicationController
  before_action :set_form, only: [:show, :edit, :update, :destroy]
  before_filter :set_search
  before_action :authenticate_user!, only: [:new, :create]
  before_action :is_owener?, only: [:edit, :update]
  

  # GET /forms
  # GET /forms.json
  def index
    @q = Form.search(params[:q])
    @forms = @q.result(distinct: true).order("Created_at DESC")
  end

  # GET /forms/1
  # GET /forms/1.json
  def show
     @q = Form.search(params[:q])
  end

  # GET /forms/new
  def new
    #@form = current_user.forms.create(form_params)
    #@q = current_user.forms.search(params[:q])
    @q = Form.search(params[:q])
    @form = Form.new
  end

  def edit
      @q = Form.search(params[:q])
  end

  # POST /forms
  # POST /forms.json
  def create
    #@form = Form.new(form_params)
    @form = current_user.forms.create(form_params)
    respond_to do |format|
      if @form.save
        format.html { redirect_to root_path, notice: 'Form was successfully created.' }
        format.json { render :show, status: :created, location: @form }
       
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forms/1
  # PATCH/PUT /forms/1.json
  def update
    respond_to do |format|
      if @form.update(form_params)
        format.html { redirect_to @form, notice: 'Form was successfully updated.' }
        format.json { render :show, status: :ok, location: @form }
      else
        format.html { render :edit }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forms/1
  # DELETE /forms/1.json
  def destroy
    @form.destroy
    respond_to do |format|
      format.html { redirect_to forms_url, notice: 'Form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form
      @form = Form.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_params
      params.require(:form).permit(:title, :comment)
    end
    
    def is_owener?
      if Form.find(params[:id]).user != current_user
        redirect_to root_path
      end
    end
end
