class UnderstandsController < ApplicationController
    
    def create
    @understands = Understand.find(params[:id])
    @understands.create
    redirect_to root_path
    end
    
    def destroy
    @understands = Understand.find(params[:id])
    @understands.destroy
    redirect_to root_path
    end

end
