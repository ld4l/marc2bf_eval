class ConversionsController < ApplicationController

  before_action :set_conversion, only: [:show, :edit, :update, :destroy]

  # GET /conversions
  # GET /conversions.json
  def index
    # @converions = Conversion.search(params[:search])
    @conversions = Conversion.all
  end

  # GET /conversions/1
  # GET /conversions/1.json
  def show
  end

  # GET /conversions/new
  def new
    @conversion = Conversion.new
  end

  # GET /conversions/1/edit
  def edit
  end

  # POST /conversions
  # POST /conversions.json
  def create
    # Parameters: {"utf8"=>"✓", "authenticity_token"=>"ef4sRGjgtt5FOSgGKqXhJeFyzzIk1mY1JgnU2EeIZfi6lnL/s8f6z3b88jUJIbsinIynmBuZKstpSX8nx3qiIQ==", "conversion_issue"=>{"conversion_id"=>"6", "issue_id"=>"7", "comment"=>"Some comment about 008 field in Halle's work.", "evaluator_id"=>"1"}, "commit"=>"Create Conversion issue"}
    
    # @conversion = Conversion.new(conversion_params)
    # @conversion.conversion_issues.build(:issue_id => params[:conversion_issue][:issue_id])

    respond_to do |format|
      if @conversion.save
        format.html { redirect_to @conversion, notice: 'Conversion was successfully created.' }
        format.json { render :show, status: :created, location: @conversion }
      else
        format.html { render :new }
        format.json { render json: @conversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conversions/1
  # PATCH/PUT /conversions/1.json
  def update
    @conversion.conversion_issues.build(:issue_id => params[:conversion_issue][:issue_id], :comment => params[:conversion_issue][:comment])

    respond_to do |format|
      if @conversion.update(conversion_params)
        # format.html { redirect_to @conversion, notice: 'Conversion was successfully updated.' }
        format.html { redirect_to :action => 'edit', notice: 'Conversion was successfully updated.' }
        format.json { render :show, status: :ok, location: @conversion }
      else
        format.html { render :edit }
        format.json { render json: @conversion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conversions/1
  # DELETE /conversions/1.json
  def destroy
    @conversion.destroy

    # Delete associated issue records
    conversion_id = @@conversion.id
    ConversionIssue.where(conversion_id: conversion_id).find_each do |associated_issue|
      assocated_issue.destroy
    end

    respond_to do |format|
      format.html { redirect_to conversions_url, notice: 'Conversion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conversion
      @conversion = Conversion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conversion_params
      params.require(:conversion).permit(:marc, :bf)
    end
end
