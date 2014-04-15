# IURI - Immuatble URI class in ruby

I often want to write something like this:

```ruby
URI.parse("http://example.com").tap do |uri|
  uri.scheme = "https"
end
```

But I would rather write:

```ruby
URI.parse("http://example.com").with scheme: 'https'
```

## Installation

Add this line to your application's Gemfile:

    gem 'iuri'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iuri

## Usage

```ruby
uri = IURI.parse "http://example.com"
secure_uri = uri.with scheme: 'https'
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/iuri/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
