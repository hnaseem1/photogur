class Picture < ApplicationRecord

  belongs_to :user

  validates :artist, :url, presence: true
  validates :url, uniqueness: true
  validates :title, length: { in: 3..100 }


  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

end
