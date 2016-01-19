class HasClausesController < ApplicationController
  before_action :set_has_clause, only: [:show, :edit, :update, :destroy]

  # GET /has_clauses
  # GET /has_clauses.json
  def index
    @has_clauses = HasClause.all
  end

  # GET /has_clauses/1
  # GET /has_clauses/1.json
  def show
  end

  # GET /has_clauses/new
  def new
    @has_clause = HasClause.new
    @users = User.all
    @clauses = Clause.all
  end

  # GET /has_clauses/1/edit
  def edit
  end

  # POST /has_clauses
  # POST /has_clauses.json
  def create
    @has_clause = HasClause.new(has_clause_params)

    respond_to do |format|
      if @has_clause.save
        format.html { redirect_to @has_clause, notice: 'Has clause was successfully created.' }
        format.json { render :show, status: :created, location: @has_clause }
      else
        format.html { render :new }
        format.json { render json: @has_clause.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /has_clauses/1
  # PATCH/PUT /has_clauses/1.json
  def update
    respond_to do |format|
      if @has_clause.update(has_clause_params)
        format.html { redirect_to @has_clause, notice: 'Has clause was successfully updated.' }
        format.json { render :show, status: :ok, location: @has_clause }
      else
        format.html { render :edit }
        format.json { render json: @has_clause.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /has_clauses/1
  # DELETE /has_clauses/1.json
  def destroy
    @has_clause.destroy
    respond_to do |format|
      format.html { redirect_to has_clauses_url, notice: 'Has clause was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_clause
      @has_clause = HasClause.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def has_clause_params
      params.require(:has_clause).permit(:user_id, :clause_id, :seleccionada)
    end
end
