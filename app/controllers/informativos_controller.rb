class InformativosController < ApplicationController
  before_action :set_informativo, only: [:show, :edit, :update, :destroy]

  # GET /informativos
  # GET /informativos.json
  def index
    @informativos = Informativo.all
  end

  # GET /informativos/1
  # GET /informativos/1.json
  def show
  end

  # GET /informativos/new
  def new
    @informativo = Informativo.new
  end

  # GET /informativos/1/edit
  def edit
  end

  # POST /informativos
  # POST /informativos.json
  def create
    @informativo = Informativo.new(informativo_params)

    respond_to do |format|
      if @informativo.save
        format.html { redirect_to @informativo, notice: 'Adicionado com sucesso, obrigado.' }
        format.json { render :show, status: :created, location: @informativo }
      else
        format.html { render :new }
        format.json { render json: @informativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informativos/1
  # PATCH/PUT /informativos/1.json
  def update
    respond_to do |format|
      if @informativo.update(informativo_params)
        format.html { redirect_to @informativo, notice: 'Atualizado com sucesso, obrigado' }
        format.json { render :show, status: :ok, location: @informativo }
      else
        format.html { render :edit }
        format.json { render json: @informativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informativos/1
  # DELETE /informativos/1.json
  def destroy
    @informativo.destroy
    respond_to do |format|
      format.html { redirect_to informativos_url, notice: 'Deletado com sucesso, obrigado' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informativo
      @informativo = Informativo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def informativo_params
      params.require(:informativo).permit(:email)
    end
end
