class NewJob < ActiveJob::Base
  queue_as :low_priority

  def perform(*args)
    10.times do
      logger.info args
      sleep 1
    end
  end
end
