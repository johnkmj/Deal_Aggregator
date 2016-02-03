require "deal_aggregator/version"
require "deal_aggregator/hello"

module DealAggregator
  # Your code goes here...
  def self.hi(n = 'World')
  	hello = Hello
  	hello.greet(n)
  end
end
