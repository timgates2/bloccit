include RandomData

FactoryGirl.define do
  factory :post do
    tutle RandomData.random_sentence
    body RandomData.random_paragraph
    topic
    user
    rank 0.0
  end
end
