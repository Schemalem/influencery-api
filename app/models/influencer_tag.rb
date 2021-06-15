class InfluencerTag < ApplicationRecord
  belongs_to :influencer
  belongs_to :tag

  # validates :influencer_id, :tag_id, presence: true
end
