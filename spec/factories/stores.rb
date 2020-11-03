FactoryBot.define do

  factory :store do
    store_name             {"test"}
    postal_code            {"0000000"}
    prefectures            {"福岡県"}
    ctiy                   {"福岡市中央区"}
    block_number           {"1-1-1"}
    phone_number           {"0921234567"}
    open_time              {"10:00"}
    close_time             {"22:00"}
    holiday                {"月曜日"}
    smoking_environment    {"喫煙可（加熱式たばこのみＯＫ）"}
    website_url            {"http://aaaa"}
  end

end