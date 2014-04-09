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

    def time_series(start_date, end_date)
      parse_response fetch_time_series(start_date, end_date)
    end

    private

    def app_id
      Moneda.configuration.app_id
    end

    def fetch_historical_on(date)
      HTTParty.get("#{Moneda::API_URL}/historical/#{date}.json?app_id=#{app_id}&base=#{base_currency}").body
    end

    def fetch_time_series(from, to)
      HTTParty.get("#{Moneda::API_URL}/api/time-series.json?app_id=#{app_id}&base=#{base_currency}&start=#{from}&end=#{to}").body
    end

    def parse_response(response)
      json_response = JSON.parse(response)
      if json_response["error"]
        raise Moneda::Error, json_response["message"]
      else
        json_response["rates"]
      end
    end
  end
end
