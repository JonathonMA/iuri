require 'delegate'
require 'uri'

class IURI < SimpleDelegator
  def self.parse uri
    new URI.parse uri
  end

  def inspect
    super.gsub '#<URI', '#<IURI'
  end

  def with options
    dup.tap do |uri|
      options.each do |key, value|
        uri.send "#{key}=", value
      end
    end
  end
end

require 'iuri/version'
