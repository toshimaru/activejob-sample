class HomeController < ApplicationController
  def index
    # NewJob.perform_later 'Hello World!'
    NewJob.set(wait: 10.seconds).perform_later 'later hello!'
    render text: "hello!"
  end
end
