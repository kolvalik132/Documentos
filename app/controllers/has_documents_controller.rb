class HasDocumentsController < ApplicationController
  before_action :set_has_document, only: [:show, :edit, :update, :destroy]

  # GET /has_documents
  # GET /has_documents.json
  def index
    @has_documents = HasDocument.all
    @clauses = Clause.all
  end

  # GET /has_documents/1
  # GET /has_documents/1.json
  def show
  end

  # GET /has_documents/new
  def new
    @has_document = HasDocument.new
    @users = User.all
    @documents = Document.all

  end

  # GET /has_documents/1/edit
  def edit
    @users = User.all
    @documents = Document.all
  end

  # POST /has_documents
  # POST /has_documents.json
  def create
    @has_document = HasDocument.new(has_document_params)
    
    respond_to do |format|
      if @has_document.save
        format.html { redirect_to @has_document, notice: 'Has document was successfully created.' }
        format.json { render :show, status: :created, location: @has_document }
      else
        format.html { render :new }
        format.json { render json: @has_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /has_documents/1
  # PATCH/PUT /has_documents/1.json
  def update
    respond_to do |format|
      if @has_document.update(has_document_params)
        format.html { redirect_to @has_document, notice: 'Has document was successfully updated.' }
        format.json { render :show, status: :ok, location: @has_document }
      else
        format.html { render :edit }
        format.json { render json: @has_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /has_documents/1
  # DELETE /has_documents/1.json
  def destroy
    @has_document.destroy
    respond_to do |format|
      format.html { redirect_to has_documents_url, notice: 'Has document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_document
      @has_document = HasDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def has_document_params
      params.require(:has_document).permit(:user_id, :document_id)
    end
end
