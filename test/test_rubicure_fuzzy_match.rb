require 'test/unit'
require 'rubicure_fuzzy_match'

class TestRubicureFuzzyMatch < Test::Unit::TestCase
  data(
    "ふたり"      => ["ふたり"     , "ふたりはプリキュア"            ],
    "初代"        => ["初代"       , "ふたりはプリキュア"            ],
    "無印"        => ["無印"       , "ふたりはプリキュア"            ],
    "MH"          => ["MH"         , "ふたりはプリキュア Max Heart"  ],
    "SS"          => ["SS"         , "ふたりはプリキュア Splash Star"],
    "S☆S"         => ["S☆S"        , "ふたりはプリキュア Splash Star"],
    "Yes"         => ["Yes"        , "Yes！ プリキュア5"             ],
    "yes"         => ["yes"        , "Yes！ プリキュア5"             ],
    "プリキュア5" => ["プリキュア5", "Yes！ プリキュア5"             ],
    "5GoGo"       => ["5GoGo"      , "Yes！ プリキュア5 Go Go！"     ],
    "555"         => ["555"        , "Yes！ プリキュア5 Go Go！"     ],
    "フレ"        => ["フレ"       , "フレッシュプリキュア！"        ],
    "ハト"        => ["ハト"       , "ハピネスチャージプリキュア！"  ],
    "スイ"        => ["スイ"       , "スイートプリキュア♪"           ],
    "スマ"        => ["スマ"       , "スマイルプリキュア！"          ],
    "ドキ"        => ["ドキ"       , "ドキドキ！プリキュア"          ],
    "ドドリア"    => ["ドドリア"   , "ドキドキ！プリキュア"          ],
    "ハピチャ"    => ["ハピチャ"   , "ハピネスチャージプリキュア！"  ],
    "ハチャプリ"  => ["ハチャプリ" , "ハピネスチャージプリキュア！"  ],
    "Goプリ"      => ["Goプリ"     , "Go!プリンセスプリキュア"       ],
    "ゴプリ"      => ["ゴプリ"     , "Go!プリンセスプリキュア"       ],
    "ゴプリプリ"  => ["ゴプリプリ" , "Go!プリンセスプリキュア"       ],
    "姫プリ"      => ["姫プリ"     , "Go!プリンセスプリキュア"       ])
  test '.regularize' do |data|
    assert_equal data[1], Rubicure::Seriese.regularize(data[0])
  end

  test '.regularize invalid case' do
    assert_nil Rubicure::Seriese.regularize('足タコナンジャ')
  end
end
