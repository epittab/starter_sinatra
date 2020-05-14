class MachineController < Sinatra::Base


    set :views, "app/views/machines"

    get "/machines" do
        @machines = Machine.all
        erb :index
    end

    get "/machines/new" do
        @parts = Part.all 
        erb :new
    end 

    post "/machines" do
        prod = nil
        if  /true/i.match?(params[:in_production])
            prod = true
        else
            prod = false
        end
        machine = Machine.find_or_create_by(name: params[:name], machine_type: params[:machine_type], brand: params[:brand], in_production: prod)
        params[:parts][0].each do |keys, id|
            # binding.pry
            MachinePart.create(machine_id: machine.id, part_id: id)
        end
        redirect "/machines/#{machine.id}"
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
