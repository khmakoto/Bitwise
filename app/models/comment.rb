class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :publication
  validates :text, presence: :true
end
