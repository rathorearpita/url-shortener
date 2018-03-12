class HomeController < ApplicationController
  def index
    @link = Link.new
    @top_links = Link.order(clicks: :desc).first(15)
  end

  def visit
    link = Link.find_by!(shorten: params[:shorten])
    redirect_to link.url
  end
end
