class HasOffersV3
  class Report < Base
    def get_conversions(params = {}, &block)
      # TODO: This *should* be a GET request, however, if we use that here we get: "The requested URL's length exceeds the capacity limit for this server."
      #       because the number of affiliate_ids we pass in is too high.
      post_request 'getConversions', params, &block
    end

    def get_mod_summary_logs(params = {}, &block)
      get_request 'getModSummaryLogs', params, &block
    end

    def get_stats(params = {}, &block)
      post_request 'getStats', params, &block
    end
  end
end
