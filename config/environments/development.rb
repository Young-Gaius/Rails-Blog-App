require "active_support/core_ext/integer/time"
Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  # In the development environment your application's code is reloaded any time
  # it changes. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.enable_reloading = true
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false
@@ -56,9 +56,6 @@
  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Highlight code that enqueued background job in logs.
  config.active_job.verbose_enqueue_logs = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

@@ -70,7 +67,4 @@

  # Uncomment if you wish to allow Action Cable access from any origin.
  # config.action_cable.disable_request_forgery_protection = true

  # Raise error when a before_action's only/except options reference missing actions
  config.action_controller.raise_on_missing_callback_actions = true
end