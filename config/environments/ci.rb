require_relative 'development'
 
Rails.application.configure do
  config.log_level = :debug

  config.action_controller.perform_caching = false

  config.cache_store = :null_store

  config.cache_classes = false
  config.action_view.cache_template_loading = false

  config.require_master_key = false
  config.read_encrypted_secrets = false

  config.active_job.queue_adapter = :async

  if ENV['RAILS_LOG_TO_STDOUT'].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end
end
