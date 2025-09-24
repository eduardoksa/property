require "faker"

Property.destroy_all

50.times do
  property = Property.create!(name: Faker::Address.unique.community)

  rand(3..5).times do |i|
    property.photos.create!(
      file: Rack::Test::UploadedFile.new(
        Rails.root.join("spec/fixtures/files/sample#{rand(1..4)}.jpg")
      ),
      position: i + 1
    )
  end
end
