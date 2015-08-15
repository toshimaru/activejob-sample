class NewJob < ActiveJob::Base
  queue_as :default

  rescue_from ActiveJob::DeserializationError do |ex|
    Shoryuken.logger.error ex
    Shoryuken.logger.error ex.backtrace.join("\n")
  end

  def perform(*args)
    10.times do
      logger.info args
      sleep 1
    end
  end
end
