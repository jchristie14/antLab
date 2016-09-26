CarrierWave.configure do |config|
  #config.fog_provider = 'fog/aws'                        # required
  config.storage = :fog
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["aki"],                        # required
    aws_secret_access_key: ENV["sak"],                        # required
    #region:                'OREGON',                  # optional, defaults to 'us-east-1'
    #host:                  'theantsgomarching',             # optional, defaults to nil
    #endpoint:              ''#'https://s3.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = ENV["bucket"]                          # required
  #config.fog_public     = false                                        # optional, defaults to true
  #config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end