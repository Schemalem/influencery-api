require 'rails_helper'

RSpec.describe "Influencer Tag", type: :model do
 # Create a platform for testing
  let (:facebook) do
    Platform.create!(id: 1, name: 'facebook', base_url: 'https://www.facebook.com/')
  end

  # create tag 1 for testing
  let (:football_tag) do
    Tag.create!(name: 'football')
  end

  # create tag 2 for testing
  let (:freestyle_tag) do
    Tag.create!(name: 'freestyler')
  end

  # create an influencer for testing
  let (:unbox) do
    Influencer.create!(handle: 'unboxfactory', followers: 1_272_228, profile_pic_url: 'https://res.cloudinary.com/goatagency/image/facebook/unboxfactory', platform: facebook)
  end

  let(:valid_attributes) do
    {
      influencer: unbox,
      tag: football_tag
    }
  end

  it "belongs to an influencer" do
    inftag = InfluencerTag.new(influencer: unbox)
    expect(inftag.influencer).to eq(unbox)
  end

  it "belongs to a tag" do
    inftag = InfluencerTag.new(tag: football_tag)
    expect(inftag.tag).to eq(football_tag)
  end

  it "influencer cannot be blank" do
    attributes = valid_attributes
    attributes.delete(:influencer)
    inftag = InfluencerTag.new(attributes)
    expect(inftag).not_to be_valid
  end

  it "tag cannot be blank" do
    attributes = valid_attributes
    attributes.delete(:tag)
    inftag = InfluencerTag.new(attributes)
    expect(inftag).not_to be_valid
  end

end
