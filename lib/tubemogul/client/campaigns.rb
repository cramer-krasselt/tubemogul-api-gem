module TubeMogul
  class Client
    module Campaigns
      def campaigns(advertiser_id = nil,
                    campaign_name = nil,
                    customer_order_number = nil,
                    status = nil,
                    limit = nil,
                    sort_by = nil)
        options = {}
        # Optionals
        options.merge!(advertiser_id: advertiser_id) if advertiser_id
        options.merge!(campaign_name: campaign_name) if campaign_name
        options.merge!(customer_order_number: customer_order_number) if customer_order_number
        options.merge!(status: status) if status
        options.merge!(limit: limit) if limit
        options.merge!(sort_by: sort_by) if sort_by

        get("trafficking/campaigns", options)
      end

      def campaign(id)
        get("trafficking/campaigns/#{id}")
      end
    end
  end
end
