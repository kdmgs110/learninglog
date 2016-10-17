class DialoguesController < ApplicationController
    before_action :set_dialogue
    def index 
        @dialogues = Dialogue.all
    end
    
    def create
        ## ここ@users設定うる必要ないかも,current_userでおけ
        @users = current_user

        @dialogues = @users.dialogues.create(dialogue_params.merge(user_id: current_user.id))
        ## @users.dialoguesでcreateしてるからuser_idをmergeする必要ないー自動的にuser_idはcurrent_user.idに設定される
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
