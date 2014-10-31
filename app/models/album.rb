class Album < ActiveRecord::Base

  validates :name, presence: true

  def self.sort_by_rank
    all.limit(10).sort_by{|i| -i[:rank]}
  end

end
