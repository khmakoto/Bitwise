class Publication < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: :true
  validates_presence_of :summary, :if => lambda { |o| o.publication_type == "review" }
 
end
