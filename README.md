# DealFinder

Deal finder in Ruby. Helps keep an eye on various deals and stuff by pulling multiple sources and sorting through it.


## Dev guide

#### Installation
We need `rbenv, ruby, rails, bundler`. See installation [here](https://gorails.com/setup/osx/10.10-yosemite)


#### Refs

- Here's a [nice guide](https://www.digitalocean.com/community/tutorials/how-to-package-and-distribute-ruby-applications-as-a-gem-using-rubygems) on how to publish a proper Ruby gem. Pretty comprehensive.
- Example on how to write a module and its methods: [Nokogiri](https://github.com/sparklemotion/nokogiri/blob/master/lib/nokogiri.rb) (cleaner), [HTTParty](https://github.com/jnunemaker/httparty/blob/master/lib/httparty.rb) (unnecessary module cyclic reference but good method ref).
- Also, [good scraper example](https://www.distilled.net/resources/web-scraping-with-ruby-and-nokogiri-for-beginners/) to study; involves `http client, HTML parsing, File I/O`.
- Another pretty nice (but nothing to study) example is [Upton](https://github.com/propublica/upton).


#### Guideline 

- place all source code inside `lib/deal_aggregator/`; then require them at the top of `lib/deal_aggregator.rb` - the main module for export.
- use Module over Class. No need to use instantiable class, since people will use its methods directly without instantiating. Declare methods with a `self.`, like `def self.greet(n = 'hi') ...`
- to test the module, `cd` into `lib/deal_aggregator` and run `bundler console`, do `DealAggregator.hi()`.
- to add dependencies, u have to manually (eww) add it at the end of `./deal_aggregator.gemspec`, like `spec.add_runtime_dependency "nokogiri", ">= 0"`. Then, the `npm install` equivalent is `bundle install`. Also, gems are installed on your machine rather than the project folder.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'deal_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deal_finder


## Usage

TODO: Write usage instructions here


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

