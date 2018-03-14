class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :registerable,
  has_many :replies
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
