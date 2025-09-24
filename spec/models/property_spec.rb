require 'rails_helper'

RSpec.describe Property, type: :model do
  it "is invalid without a name" do
    property = Property.new(name: nil)
    expect(property).not_to be_valid
  end

  it "returns the third photo as cover" do
    property = Property.create!(name: "Test Property")
    3.times { |i| property.photos.create!(position: i+1, file: Rack::Test::UploadedFile.new(Rails.root.join("spec/fixtures/files/sample1.jpg"))) }
    expect(property.cover_photo.position).to eq(3)
  end
end
