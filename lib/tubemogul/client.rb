module TubeMogul
  # Wrapper for the TubeMogul REST API
  #
  # @note All methods have been separated into modules and follow the same grouping used in http://instagram.com/developer/
  # @see http://instagram.com/developer/
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}

    include TubeMogul::Client::Utils

    include TubeMogul::Client::Users
    include TubeMogul::Client::Media
    include TubeMogul::Client::Locations
    include TubeMogul::Client::Geographies
    include TubeMogul::Client::Tags
    include TubeMogul::Client::Comments
    include TubeMogul::Client::Likes
    include TubeMogul::Client::Subscriptions
    include TubeMogul::Client::Embedding
  end
end
