FactoryBot.define do
  factory :study_log do
    started_at { "2026-06-25 06:54:52" }
    finished_at { "2026-06-25 06:54:52" }
    memo { "MyText" }
    user { nil }
    topic { nil }
  end
end
