# RubicureFuzzyMatch

[![Gem Version](https://badge.fury.io/rb/rubicure_fuzzy_match.svg)](http://badge.fury.io/rb/rubicure_fuzzy_match)
[![Dependency Status](https://gemnasium.com/kaosf/rubicure_fuzzy_match.svg)](https://gemnasium.com/kaosf/rubicure_fuzzy_match)
[![Build Status](https://travis-ci.org/kaosf/rubicure_fuzzy_match.svg)](https://travis-ci.org/kaosf/rubicure_fuzzy_match)
[![Coverage Status](https://coveralls.io/repos/github/kaosf/rubicure_fuzzy_match/badge.svg?branch=master)](https://coveralls.io/github/kaosf/rubicure_fuzzy_match?branch=master)
[![Code Climate](https://codeclimate.com/github/kaosf/rubicure_fuzzy_match/badges/gpa.svg)](https://codeclimate.com/github/kaosf/rubicure_fuzzy_match)

```ruby
Rubicure::Seriese.regularize 'S☆S' #=> "ふたりはプリキュア Splash☆Star"
```

```ruby
x = Rubicure::Seriese.fuzzy_find 'S☆S'
x.title #=> "ふたりはプリキュア Splash☆Star"
x.class #=> Rubicure::Seriese
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubicure_fuzzy_match'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubicure_fuzzy_match

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kaosf/rubicure_fuzzy_match.

## References

- [Fuzzy match in Ruby [Brighter Planet's Safety in Numbers]](http://numbers.brighterplanet.com/2012/01/18/fuzzy-match-in-ruby/)
- [seamusabshere/fuzzy_match](https://github.com/seamusabshere/fuzzy_match)
- [Ruby - Test::Unitでテストを書く - Qiita](http://qiita.com/repeatedly/items/727b08599d87af7fa671)

## Slide

[Rubicureをあいまい検索対応強化してみた](http://kaosf.github.io/rubicure-fuzzy-match-slide)

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright (C) 2015 ka
