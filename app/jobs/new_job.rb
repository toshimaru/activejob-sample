class NewJob < ActiveJob::Base
  queue_as :shoryuken_test

  def perform(name)
    10.times do
      logger.info "Hello #{name}"
      sleep 1
    end
  end
end
