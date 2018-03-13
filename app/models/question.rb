class Question < ActiveRecord::Base
  belongs_to :quiz
  has_many :possible_answers
  accepts_nested_attributes_for :possible_answers, reject_if: :all_blank, allow_destroy: true

end
