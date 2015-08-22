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
    "ハト"        => ["ハト"       , "ハートキャッチプリキュア！"    ],
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

  data(
    "ふたり"      => ["ふたり"     , Precure.first           ],
    "初代"        => ["初代"       , Precure.first           ],
    "無印"        => ["無印"       , Precure.first           ],
    "MH"          => ["MH"         , Precure.max_heart       ],
    "SS"          => ["SS"         , Precure.splash_star     ],
    "S☆S"         => ["S☆S"        , Precure.splash_star     ],
    "Yes"         => ["Yes"        , Precure.yes             ],
    "yes"         => ["yes"        , Precure.yes             ],
    "プリキュア5" => ["プリキュア5", Precure.yes             ],
    "5GoGo"       => ["5GoGo"      , Precure.yes_gogo        ],
    "555"         => ["555"        , Precure.yes_gogo        ],
    "フレ"        => ["フレ"       , Precure.fresh           ],
    "ハト"        => ["ハト"       , Precure.heart_catch     ],
    "スイ"        => ["スイ"       , Precure.suite           ],
    "スマ"        => ["スマ"       , Precure.smile           ],
    "ドキ"        => ["ドキ"       , Precure.dokidoki        ],
    "ドドリア"    => ["ドドリア"   , Precure.dokidoki        ],
    "ハピチャ"    => ["ハピチャ"   , Precure.happiness_charge],
    "ハチャプリ"  => ["ハチャプリ" , Precure.happiness_charge],
    "Goプリ"      => ["Goプリ"     , Precure.go_princess     ],
    "ゴプリ"      => ["ゴプリ"     , Precure.go_princess     ],
    "ゴプリプリ"  => ["ゴプリプリ" , Precure.go_princess     ],
    "姫プリ"      => ["姫プリ"     , Precure.go_princess     ])
  test '.fuzzy_find' do |data|
    assert_equal data[1], Rubicure::Seriese.fuzzy_find(data[0])
  end
end
