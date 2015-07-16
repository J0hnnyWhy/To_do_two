class DescriptionController < ApplicationController
  def index
    @list = List.find(params[:list_id])

  end
end
