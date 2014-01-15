require 'httparty'

module Moneda
  class Rates
    attr_reader :base_currency

    def initialize(base_currency='USD')
      @base_currency = base_currency
    end

    def historical_on(date)
      parse_response fetch_historical_on(date)
    end

    private

    def app_id
      Moneda.configuration.app_id
    end

    def fetch_historical_on(date)
      HTTParty.get("#{Moneda::API_URL}/historical/#{date}.json?app_id=#{app_id}").body
    end

    def parse_response(response)
      JSON.parse(response)
    end
  end
end
