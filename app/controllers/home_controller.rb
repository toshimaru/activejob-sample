class HomeController < ApplicationController
  def index
    NewJob.perform_later 'toshi'
    render text: "ActiveJob Sample Project"
  end
end
