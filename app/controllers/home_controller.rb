class HomeController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @events = Event.where('start_time > ?', Time.zone.now).order(:start_time)
  end
end
