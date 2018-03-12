class HomeController < ApplicationController
  def index
    @link = Link.new
    @top_links = Link.order(clicks: :desc).first(10)
  end

  def visit
    link = Link.find_by!(shorten: params[:shorten])
    link.increment!(:clicks)
    redirect_to link.url
  end
end
