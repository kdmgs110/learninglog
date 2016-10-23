class RepliesController < ApplicationController
    before_action :set_dialogue
    
    def create
        @forms = Form.find(params[:form_id])
        @replies = @forms.replies.create(reply_params.merge(user_id: current_user.id))
        if @replies.valid?
            # インデントするように
            redirect_to root_path
        else
            flash[:alert] = "Invalid attributes."
            redirect_to root_path
        end
    end
    
    def reply_params
         params.require(:reply).permit(:content, :form_id)
    end

end
