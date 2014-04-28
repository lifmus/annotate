class CommentsController < ApplicationController
  before_filter :set_access_control_headers

  def index
    @web_page = WebPage.find_or_create_by full_url: params[:web_page]
    render :json => @web_page.to_json
  end

  private

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
    headers['Access-Control-Max-Age'] = "1728000"
  end
end