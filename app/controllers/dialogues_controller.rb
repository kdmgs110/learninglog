class DialoguesController < ApplicationController
    
    def index 
        @dialogues = Dialogue.all
    end
    
    def create
        @users = current_user
        @dialogues = @users.dialogues.create(dialogue_params.merge(user_id: current_user.id))
        if @dialogues.valid?
        redirect_to root_path
        else
        flash[:alert] = "Invalid attributes."
        redirect_to root_path
        end
    end
    
    def destroy
    
    end
    
    private
        def dialogue_params
             params.require(:dialogue).permit(:post, :user_id)
        end
end
