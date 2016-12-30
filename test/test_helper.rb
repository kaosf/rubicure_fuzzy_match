require 'simplecov'
require 'coveralls'
require 'test/unit'

Coveralls.wear!
if ENV['CI'] != 'true'
  SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
  SimpleCov.start do
    add_filter '/test/'
  end
end

# require order ref.
#   http://qiita.com/bsdmad/items/ab8b7d92d965df8bb2d8
# ENV['CI'] != 'true" ref.
#   http://stackoverflow.com/questions/12983137/how-do-detect-if-travis-ci-or-not
#   http://docs.travis-ci.com/user/environment-variables/#Default-Environment-Variables
# add_filter '/test/' ref.
#   https://github.com/colszowka/simplecov#string-filter
