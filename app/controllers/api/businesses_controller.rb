class Api::BusinessesController < ApplicationController
  def index
    @businesses = Business.all
    render "index.json.jb"
  end

  def create
    @business = Business.new(
      name: params[:name],
      email: params[:email],
      address: params[:address],
      city: params[:city],
      state: params[:state],
      zip_code: params[:zipCode],
      logo_url: params[:logoUrl],
      description: params[:description],
      phone: params[:phone]

    )
    @business.save
    render "show.json.jb"
  end

  def show
    @business = Business.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @business = Business.find_by(id: params[:id])
    @business.name = params[:name] || @business.name
    @business.email = params[:email] || @business.email
    @business.address = params[:address] || @business.address
    @business.city = params[:city] || @business.city
    @business.state = params[:state] || @business.state
    @business.zip_code = params[:zipCode] || @business.zip_code
    @business.logo_url = params[:logoUrl] || @business.logo_url
    @business.description = params[:description] || @business.description
    @business.phone = params[:phone] || @business.phone
    @business.save
    render "show.json.jb"
  end

  def destroy
    business = Business.find_by(id: params[:id])
    business.destroy
    render json: {message: "Business successfully destroyed."}
  end
  
end
