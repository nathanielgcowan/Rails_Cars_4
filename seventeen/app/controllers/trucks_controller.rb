class TrucksController < ApplicationController

  # GET: /trucks
  get '/trucks' do 
    @trucks = Truck.all
    
    erb :"/trucks/index.html"
  end

  # GET: /trucks/new
  get "/trucks/new" do
    erb :"/trucks/new.html"
  end

  # POST: /trucks
  post "/trucks" do
    redirect "/trucks"
  end

  # GET: /trucks/5
  get "/trucks/:id" do
    @truck = Truck.find(params[:id])
    erb :"/trucks/show.html"
  end

  # GET: /trucks/5/edit
  get "/trucks/:id/edit" do
    erb :"/trucks/edit.html"
  end

  # PATCH: /trucks/5
  patch "/trucks/:id" do
    redirect "/trucks/:id"
  end

  # DELETE: /trucks/5/delete
  delete "/trucks/:id/delete" do
    redirect "/trucks"
  end
end
