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

    delete "/machines/:id" do
        mach_id = params[:id]
        Machine.destroy(mach_id)
        redirect "/machines"
    end


end
