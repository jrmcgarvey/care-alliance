FactoryBot.define do
  factory :timeline do
    timeline_id { "MyString" }
    title { "MyString" }
    description { "MyString" }
    focus_date { "2020-10-01 19:18:18" }
    initial_zoom { 1 }
    timezone { "MyString" }
    inverted { false }
    bottom { 1 }
    collapsed { false }
  end
end
