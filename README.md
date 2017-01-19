# TubeMogul Unofficial gem
Quick hack on the Instagram Gem, adapted for the TubeMogul.

Not endpoint-complete by a far cry, not even tested at all.

This works for my purposes currently, but is obviously a use-at-own-risk piece of software.

## Usage

```ruby
require 'tubemogul'

TubeMogul.configure do |config|
    # Required
    config.client_id		= ENV['TUBE_CLIENT_ID']
    config.client_secret	= ENV['TUBE_CLIENT_SECRET']
end

auth_result = TubeMogul.get_access_token
#<Hashie::Mash ... >

client = TubeMogul::Client.new(access_token: auth_result.token)
#<TubeMogul::Client ... >

client.campaigns
#<Hashie::Mash ... >
```
