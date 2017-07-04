class Tweet < ApplicationRecord
  belongs_to :user
  validates_length_of :body, :maximum => 140
end
