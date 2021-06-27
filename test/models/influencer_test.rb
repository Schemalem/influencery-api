require 'test_helper'

class InfluencerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  influencer = Influencer.new(handle: 'unboxfactory', followers: 1_272_228, profile_pic_url: 'https://res.cloudinary.com/goatagency/image/facebook/unboxfactory', platform_id: 1)
  test "influencer compiles correctly" do

    assert_equal 'unboxfactory', influencer.handle, "handle does not match"
    assert_equal 1_272_228, influencer.followers, "followers do not match"
    assert_equal 'https://res.cloudinary.com/goatagency/image/facebook/unboxfactory', influencer.profile_pic_url, "handle does not match"
    assert_equal 1, influencer.platform_id, "platform_id does not match"
  end
end
