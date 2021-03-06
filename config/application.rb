require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module Website
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
   
    config.action_mailer.smtp_settings = {
        address: "smtp.gmail.com",
        port: 587,
        domain: 'gmail.com',
        authentication: "plain",
        enable_starttls_auto: true,
        user_name: ENV["GMAIL_USERNAME"],
        password: ENV["GMAIL_PASSWORD"]
    }

    config.action_mailer.default_url_options = {
        host: "boshencui.herokuapp.com"   
    }

    CarrierWave.configure do |config|
        config.storage    = :aws
        config.aws_bucket = 'bootsyuploads'
        config.aws_acl    = 'public-read'

      config.aws_credentials = {                     # required
        access_key_id:     ENV["ACCESS_KEY"],                        # required
        secret_access_key: ENV["SECRET_KEY"],                        # required
        region:                'us-east-1'                # optional, defaults to 'us-east-1'
      }
                                   # optional, defaults to true
 
    end

  end
end
