Rails.application.configure do
  

  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end
  
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true
  config.action_mailer.raise_delivery_errors = true
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
  config.assets.quiet = true

  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  config.action_mailer.default_url_options = { host: 'https://esale-ror-app.herokuapp.com'}

  

 config.action_mailer.delivery_method = :smtp
      config.action_mailer.smtp_settings = {
      :address              => "smtp.gmail.com",
      :port                 =>  587,
      :user_name            =>  "testemailformustafa",
      :password             =>  "321test987654321",
      :authentication       =>  'plain',
      :enable_starttls_auto => true }
  


end
