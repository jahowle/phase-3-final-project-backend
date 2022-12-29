require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/neighbors' do
   neighbors = Neighbor.all 
   neighbors.to_json
  end

  post '/neighbors' do
    neighbor = Neighbor.create(
      name: params[:name],
      bio: params[:bio],
      location_id: params[:location_id],
      partner_id: params[:partner_id]
    )

    neighbor.to_json

  end

  post '/needs' do
    need = Need.create(
      description: params[:description],
      amount: params[:amount],
      neighbor_id: params[:neighbor_id],
      category_id: params[:category_id],
      funded: false
    )
    need.to_json

  end

  delete '/needs/:id' do
    need = Need.find(params[:id])
    need.destroy
    need.to_json
  end

  get '/needs' do
    needs = Need.all 
    needs.to_json(include: [:neighbor, :category])
   end

   get '/needs/:id' do
    need  = Need.find(params[:id])
    need.to_json
   end

   patch '/needs/:id' do
    need = Need.find(params[:id])
    need.update(
      funded: params[:funded],
    )
    need.to_json
  end

   get '/partners' do
    partners = Partner.all 
    partners.to_json
   end

   get '/locations' do
    locations = Location.all 
    locations.to_json
   end

   get '/categories' do
    categories = Category.all 
    categories.to_json
   end

end
