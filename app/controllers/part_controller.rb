class PartController < Sinatra::Base

    set :views, "app/views/parts"

    get "/parts" do
        @parts = Part.all

        erb :index
    end

    get "/parts/:id" do

        @part = Part.find(params[:id])

        erb :show
    end

    

end
