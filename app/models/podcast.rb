class Podcast < ActiveRecord::Base
  validates_uniqueness_of :feed
end