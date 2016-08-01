require 'test/unit'
require 'rubicure_fuzzy_match'

class TestRubicureFuzzyMatch < Test::Unit::TestCase
  data(
    "ふたり"             => ["ふたり"            , "ふたりはプリキュア"            ],
    "初代"               => ["初代"              , "ふたりはプリキュア"            ],
    "無印"               => ["無印"              , "ふたりはプリキュア"            ],
    "MH"                 => ["MH"                , "ふたりはプリキュア Max Heart"  ],
    "マックスハート"     => ["マックスハート"    , "ふたりはプリキュア Max Heart"  ],
    "SS"                 => ["SS"                , "ふたりはプリキュア Splash☆Star"],
    "S☆S"                => ["S☆S"               , "ふたりはプリキュア Splash☆Star"],
    "スプラッシュスター" => ["スプラッシュスター", "ふたりはプリキュア Splash☆Star"],
    "Yes"                => ["Yes"               , "Yes！ プリキュア5"             ],
    "yes"                => ["yes"               , "Yes！ プリキュア5"             ],
    "プリキュア5"        => ["プリキュア5"       , "Yes！ プリキュア5"             ],
    "イエス"             => ["イエス"            , "Yes！ プリキュア5"             ],
    "5GoGo"              => ["5GoGo"             , "Yes！ プリキュア5 Go Go！"     ],
    "555"                => ["555"               , "Yes！ プリキュア5 Go Go！"     ],
    "フレ"               => ["フレ"              , "フレッシュプリキュア！"        ],
    "フレプリ"           => ["フレプリ"          , "フレッシュプリキュア！"        ],
    "ハト"               => ["ハト"              , "ハートキャッチプリキュア！"    ],
    "ハトプリ"           => ["ハトプリ"          , "ハートキャッチプリキュア！"    ],
    "スイ"               => ["スイ"              , "スイートプリキュア♪"           ],
    "スイプリ"           => ["スイプリ"          , "スイートプリキュア♪"           ],
    "スマ"               => ["スマ"              , "スマイルプリキュア！"          ],
    "スマプリ"           => ["スマプリ"          , "スマイルプリキュア！"          ],
    "ドキ"               => ["ドキ"              , "ドキドキ！プリキュア"          ],
    "ドキプリ"           => ["ドキプリ"          , "ドキドキ！プリキュア"          ],
    "ドドリア"           => ["ドドリア"          , "ドキドキ！プリキュア"          ],
    "ハピチャ"           => ["ハピチャ"          , "ハピネスチャージプリキュア！"  ],
    "ハチャプリ"         => ["ハチャプリ"        , "ハピネスチャージプリキュア！"  ],
    "Goプリ"             => ["Goプリ"            , "Go!プリンセスプリキュア"       ],
    "ゴプリ"             => ["ゴプリ"            , "Go!プリンセスプリキュア"       ],
    "ゴプリプリ"         => ["ゴプリプリ"        , "Go!プリンセスプリキュア"       ],
    "姫プリ"             => ["姫プリ"            , "Go!プリンセスプリキュア"       ],
    "魔法つかい"         => ["魔法つかい"        , "魔法つかいプリキュア！"        ])
  test '.regularize' do |(input, expected)|
    assert_equal expected, Rubicure::Seriese.regularize(input)
  end

  test '.regularize invalid case' do
    assert_nil Rubicure::Seriese.regularize('足タコナンジャ')
  end

  data(
    "ふたり"   => ["ふたり"  , Precure.first           ],
    "MH"       => ["MH"      , Precure.max_heart       ],
    "SS"       => ["SS"      , Precure.splash_star     ],
    "Yes"      => ["Yes"     , Precure.yes             ],
    "5GoGo"    => ["5GoGo"   , Precure.yes_gogo        ],
    "フレ"     => ["フレ"    , Precure.fresh           ],
    "ハト"     => ["ハト"    , Precure.heart_catch     ],
    "スイ"     => ["スイ"    , Precure.suite           ],
    "スマ"     => ["スマ"    , Precure.smile           ],
    "ドキ"     => ["ドキ"    , Precure.dokidoki        ],
    "ハピチャ" => ["ハピチャ", Precure.happiness_charge],
    "Goプリ"   => ["Goプリ"  , Precure.go_princess     ])
  test '.fuzzy_find' do |(input, expected)|
    assert_equal expected, Rubicure::Seriese.fuzzy_find(input)
  end
end
