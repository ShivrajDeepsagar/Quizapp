class Quiz < ActiveRecord::Base
  validates_presence_of :title
  has_many :questions, dependent: :destroy
  has_many :replies
end
