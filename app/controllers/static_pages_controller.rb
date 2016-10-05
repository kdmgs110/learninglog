class StaticPagesController < ApplicationController
  def index
    @q = Form.search(params[:q])
  end
end
