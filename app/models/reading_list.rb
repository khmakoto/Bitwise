class ReadingList < ActiveRecord::Base
  belongs_to :user
  belongs_to :publication
end
