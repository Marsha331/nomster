# config/initializers/carrierwave.rb

CarrierWave.configure do |config|                       # required                      #required
 if Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  else
      config.storage = :fog/aws
      config.fog_credentials = {
         provider:              'AWS',                        # required
         aws_access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
          aws_secret_access_key: ENV["AWS_SECRET_KEY"],        # required
        }
        config.fog_directory  = ENV["AWS_BUCKET"]              # required
  end
end
