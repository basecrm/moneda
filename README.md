# Moneda

Browse exchange rates API

## Installation

Add this line to your application's Gemfile:

    gem 'moneda'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install moneda

## Usage

Configure the API

```ruby
Moneda.configure do |config|
  config.app_id = 'app-id'
end
```

Retrieve exchange rates for a specific `base currency` for a specific `date`

```ruby
Moneda::Rates.new('AUD').time_series('2011-10-17', '2011-10-17')
#=> { "2011-10-17" => { "AED"=>3.758833, "AFN"=>49.449889, ... } }
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/moneda/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
