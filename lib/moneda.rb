require "moneda/version"
require "moneda/configuration"
require "moneda/rates"
require "moneda/errors"

module Moneda
  API_URL = "http://openexchangerates.org"

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Moneda::Configuration.new
    yield(configuration)
  end
end
