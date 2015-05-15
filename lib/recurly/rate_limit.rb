module Recurly
  module RateLimit
    class << self
      # @return [Hash] A hash of rate limit info
      def info
        uri = API.base_uri + 'accounts'
        resp = API.head(uri)
        {
          limit:     resp['X-RateLimit-Limit'],
          remaining: resp['X-RateLimit-Remaining'],
          reset:     resp['X-RateLimit-Reset']
        }
      end
    end
  end
end
