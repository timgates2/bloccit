require 'rails_helper'
include RandomData

RSpec.describe QuestionController, type: :controller do
 
let (:my_question) { Post.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph) }
end