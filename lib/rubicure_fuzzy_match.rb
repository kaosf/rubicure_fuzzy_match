require "rubicure_fuzzy_match/version"
require "rubicure"
require "fuzzy_match"

class Rubicure::Seriese
  TITLES = Precure.map(&:title)
  TITLES_DICTIONARY = Hash[*TITLES.map.with_index { |e, i| [e, i] }.flatten]
  FUZZY_TITLES_DICTIONARY = {
    '初代'                           => 0,
    '無印'                           => 0,
    'ふたりはプリキュア Splash☆Star' => 2,
    '555'                            => 4,
    'ドドリア'                       => 9,
    'ハチャプリ'                     => 10,
    'ゴプリプリ'                     => 11,
    '姫プリ'                         => 11,
  }
  FUZZY_MATCHER = FuzzyMatch.new(TITLES + FUZZY_TITLES_DICTIONARY.keys)
  TITLES_DICTIONARY.merge! FUZZY_TITLES_DICTIONARY

  def self.regularize(title)
    s = FUZZY_MATCHER.find title
    s ? TITLES[TITLES_DICTIONARY[s]] : nil
  end
end
