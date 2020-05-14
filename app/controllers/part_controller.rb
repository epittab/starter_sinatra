class PartController < Sinatra::Base

    set :views, "app/views/parts"

    get "/parts" do
        @parts = Part.all

        erb :index
    end

    get "/parts/new" do 
        erb :new
    end 

    post "/parts" do
      part = Part.find_or_create_by(name: params[:name], brand: params[:brand], reference_number: params[:reference_number])
        redirect "/parts/#{part.id}"
    end 

    get "/parts/:id" do

        @part = Part.find(params[:id])

        erb :show
    end

    delete "/parts/:id" do
        part_id = params[:id]
        Part.destroy(part_id)
        redirect "/parts"
    end

    

end
