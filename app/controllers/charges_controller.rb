class ChargesController < ApplicationController

def index
@charges = Charge.all
end

def show
end


end
