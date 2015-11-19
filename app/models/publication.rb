class Publication < ActiveRecord::Base

  validates :user, presence: :true
  validates :publication_type, presence: :true
  validates :title, presence: :true
  validates :intro, presence: :true
  validates :content, presence: :true
  validates_presence_of :summary, :if => lambda { |o| o.publication_type == "review" }
  validates_presence_of :grade, :if => lambda { |o| o.publication_type == "review" }
  validates_presence_of :section, :if => lambda { |o| o.publication_type == "article" }

  belongs_to :user
  has_many :comments
  has_many :reading_lists
  has_many :reading_users, through: :reading_lists, source: :user

  def self.search(search)
    where("title LIKE ? OR publication_type LIKE ? OR section LIKE ? OR intro LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
 
end
