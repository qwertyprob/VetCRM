class ApplicationJob < ActiveJob::Base
  retry_on ActiveRecord::Deadlocked, wait: 5.seconds, attempts: 3 do |job, error|
    Rails.logger.warn("[Job] Retrying #{job.class} due to deadlock: #{error.message}")
  end

  discard_on ActiveJob::DeserializationError do |job, error|
    Rails.logger.warn("[Job] Discarding #{job.class} — record no longer exists: #{error.message}")
  end
end
