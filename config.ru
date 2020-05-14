require_relative './config/environment'

#Middleware
use Rack::MethodOverride
use MachineController
use PartController

#Main Entry Point
run ApplicationController
