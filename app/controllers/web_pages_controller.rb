class WebPagesController < ApplicationController
  def index
    @web_pages = WebPage.all
  end

  def create
    @web_page = WebPage.new(params[:web_page].permit(:full_url))
    if @web_page.save
      flash[:success] = "Status updated!"
    else
      flash[:error] = @web_page.errors.empty? ? "Error" : @web_page.errors.full_messages.to_sentence
    end
    redirect_to web_pages_path
  end

  def show
    @web_page = WebPage.find_by_shortened_url(params[:id])

  end
end