class Location < ApplicationRecord
  belongs_to :conference

  has_many :events
end