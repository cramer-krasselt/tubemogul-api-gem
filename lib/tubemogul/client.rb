module TubeMogul
  # Wrapper for the TubeMogul REST API
  #
  # @note All methods have been separated into modules and follow the same grouping used in http://instagram.com/developer/
  # @see http://instagram.com/developer/
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include TubeMogul::Client::Campaigns
    include TubeMogul::Client::Ads
    include TubeMogul::Client::Advertisers
  end
end
