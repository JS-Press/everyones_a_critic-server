require './config/environment'

class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    "helloooo! Try /artworks"
  end
  

  ### READ
  
  # read art w/ crits
  get "/artworks" do 
    Artwork.all.to_json(include: :interpretations)
  end
  
  ## read crit  
  # get "/artworks/:id" do 
  #   art = Artwork.find(params[:id])
  #   art.to_json(include: :interpretations)
  # end


  ### CREATE

  # create art w/o interpretations << < < < < < < <<
  post "/artworks" do 
    art = Artwork.create(
      title: params[:title],
      year_made: params[:year_made],
      artist: params[:artist],
      url: params[:url],
      description: params[:description]
    )
    art.to_json
  end

  # create crit
  post "/interpretations" do 
      crit = Interpretation.create(
      crit: params[:crit],
      artwork_id: params[:artwork_id],
      username: params[:username]
    )
    crit.to_json
  end


  ### DELETE

  # # delete art
  # delete "/artworks/:id" do 
  #   art = Artwork.find(params[:id])
  #   art.destroy
  #   art.to_json
  # end

  # delete crits
  delete "/interpretations/:id" do 
    crit = Interpretation.find(params[:id])
    crit.destroy
    crit.to_json
  end


  ### UPDATE

 # update art like count  << < < < < < < <<
  patch "/interpretations/:id" do 
    crit = Interpretation.find(params[:id])
    crit.update(
      like_count: params[:like_count]
    )
    crit.to_json
  end

  # # update crit
  # patch "/interpretations/:id" do 
  #   crit = Interpretation.find(params[:id])
  #   crit.update(
  #     crit: params[:crit]
  #   )
  #   crit.to_json
  # end


  # more options ...
  #
  # ORDER INTERPRETATIONS BY
  # most recent interpretations?
  # ORDER Artworks? - most liked? most recent?
  


end
