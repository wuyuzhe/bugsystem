class Bugtype < ActiveRecord::Base
  validates :typename,uniqueness: true
  has_many :codebugs

  def typename_with_initial
    "#{typename}"
  end
end
