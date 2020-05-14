class MachineController < Sinatra::Base


    set :views, "app/views/machines"

    get "/machines" do
        @machines = Machine.all
        erb :index
    end

    get "/machines/:id" do

        @mach = Machine.find(params[:id])
        
        
        erb :show
    end


end
