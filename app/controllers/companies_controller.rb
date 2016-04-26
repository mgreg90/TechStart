class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
    @id = params[:id]
    @name = Company.find(@id).name
    @address = Company.find(@id).address
    @about = Company.find(@id).about
    @twitter = Company.find(@id).twitter
    @linkedin = Company.find(@id).linkedin
    @instagram = Company.find(@id).instagram
    @perks = Company.find(@id).perks
    @ceo = Company.find(@id).ceo
    @numberofemployees = Company.find(@id).numberofemployees
    @pointOfContactName = Company.find(@id).pointOfContactName
    @pointOfContactEmail = Company.find(@id).pointOfContactEmail
    @pointOfContactPhone = Company.find(@id).pointOfContactPhone
    @industry = Company.find(@id).industry
    @amenities = Company.find(@id).amenities
    @qualifications = Company.find(@id).qualifications
    @city = Company.find(@id).city
    @state = Company.find(@id).state
    @zip = Company.find(@id).zip
    @meetup = Company.find(@id).meetup
    @logo = Company.find(@id).logo
    @benefits = Company.find(@id).benefits
  end

  # GET /companies/new
  def new
    @company = Company.new
    @user_id = current_user
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @user_id = current_user
    @company = current_user.companies.build(company_params)

    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def company_params

    params.require(:company).permit(:id, :name, :address, :about, :twitter, :linkedin, :instagram, :perks, :ceo, :numberofemployees, :pointOfContactName, :pointOfContactPhone, :pointOfContactEmail, :industry, :amenities, :qualifications, :city, :state, :zip, :meetup, :logo, :benefits, :user_id)
  end
end
