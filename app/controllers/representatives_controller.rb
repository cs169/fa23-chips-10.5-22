# frozen_string_literal: true

class RepresentativesController < ApplicationController
  def index
    @representatives = Representative.all
  end
  ### need a method here (search) to direct code to search.html.haml (whatever fucking view this is)
  #def search
    ##SearchController.search # 100% wrong
    ##there may be something in params[:address] 
    #address = params[:address] #### likely wrong 
    #service = Google::Apis::CivicinfoV2::CivicInfoService.new
    #service.key = Rails.application.credentials[:GOOGLE_API_KEY]
    #result = service.representative_info_by_address(address: address)
    #@representatives = Representative.civic_api_to_representative_params(result)
    #render 'representatives/search' #### likely wrong 
  #end
end
