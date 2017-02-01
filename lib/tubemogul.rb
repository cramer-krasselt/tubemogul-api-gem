require File.expand_path('../tubemogul/error', __FILE__)
require File.expand_path('../tubemogul/configuration', __FILE__)
require File.expand_path('../tubemogul/api', __FILE__)
require File.expand_path('../tubemogul/client', __FILE__)
require File.expand_path('../tubemogul/response', __FILE__)

module TubeMogulAPI
  extend Configuration

  # Alias for TubeMogulAPI::Client.new
  #
  # @return [TubeMogulAPI::Client]
  def self.client(options={})
    TubeMogulAPI::Client.new(options)
  end

  # Delegate to TubeMogulAPI::Client
  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  # Delegate to TubeMogulAPI::Client
  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
end
