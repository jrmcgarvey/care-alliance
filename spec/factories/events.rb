FactoryBot.define do
  factory :event do
    event_id { "MyString" }
    title { "MyString" }
    description { "MyString" }
    startdate { "2020-10-01 19:23:06" }
    enddate { "2020-10-01 19:23:06" }
    date_display { "MyString" }
    link { "MyString" }
    icon { "MyString" }
    importance { 1 }
    low_threshold { 1 }
    high_threshold { 1 }
    span_color { "MyString" }
    css_class { "MyString" }
    click_callback { "MyString" }
  end
end
