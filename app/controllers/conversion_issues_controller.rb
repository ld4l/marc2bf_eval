class ConversionIssuesController < ApplicationController
  before_action :set_conversion_issue, only: [:show, :edit, :update, :destroy]

  # GET /conversion_issues
  # GET /conversion_issues.json
  def index
    @conversion_issues = ConversionIssue.all
  end

  # GET /conversion_issues/1
  # GET /conversion_issues/1.json
  def show
  end

  # GET /conversion_issues/new
  def new
    @conversion_issue = ConversionIssue.new
  end

  # GET /conversion_issues/1/edit
  def edit
  end

  # POST /conversion_issues
  # POST /conversion_issues.json
  def create
    @conversion_issue = ConversionIssue.new(conversion_issue_params)

    respond_to do |format|
      if @conversion_issue.save
        format.html { redirect_to @conversion_issue, notice: 'Conversion issue was successfully created.' }
        format.json { render :show, status: :created, location: @conversion_issue }
      else
        format.html { render :new }
        format.json { render json: @conversion_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conversion_issues/1
  # PATCH/PUT /conversion_issues/1.json
  def update
    respond_to do |format|
      if @conversion_issue.update(conversion_issue_params)
        format.html { redirect_to @conversion_issue, notice: 'Conversion issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @conversion_issue }
      else
        format.html { render :edit }
        format.json { render json: @conversion_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conversion_issues/1
  # DELETE /conversion_issues/1.json
  def destroy
    @conversion_issue.destroy
    respond_to do |format|
      format.html { redirect_to conversion_issues_url, notice: 'Conversion issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversion_issue
      @conversion_issue = ConversionIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conversion_issue_params
      params.require(:conversion_issue).permit(:conversion_id, :issue_id, :comment)
    end
end