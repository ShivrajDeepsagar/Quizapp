class PossibleAnswer < ActiveRecord::Base
  belongs_to :question, dependent: :destroy
end
