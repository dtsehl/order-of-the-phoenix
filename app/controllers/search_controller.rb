class SearchController < ApplicationController
  def index
    @members = PotterAPISearchFacade.new.house_members(params[:house])
  end
end
