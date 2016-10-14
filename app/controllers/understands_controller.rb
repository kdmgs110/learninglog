class UnderstandsController < ApplicationController
    before_action :set_dialogue
    def create
    @forms = Form.find(params[:form_id])
    @understands = @forms.understands.create(understand_params.merge(user_id:current_user.id)) 
        if @understands.valid?
            redirect_to root_path
        else
             flash[:alert] = "死んでくれよ"
             redirect_to root_path
        end
    end
    
    def destroy
   
    @understands = Understand.find(params[:id])
    @understands.destroy
    redirect_to root_path
    end
    
    private 

        def understand_params
          params.require(:understand).permit(:form_id,:number)
        end

end
