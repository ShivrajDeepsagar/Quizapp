class AddUserRefToReplies < ActiveRecord::Migration
  def change
    add_reference :replies, :user, index: true, foreign_key: true
  end
end
