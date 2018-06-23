namespace :dev do

  task fake: :environment do
    Restaurant.destroy_all

    500.times do |i|
      restaurant = Restaurant.new( 
        name: FFaker::Name.first_name,
        opening_hours: FFaker::Time.datetime,
        tel: FFaker::PhoneNumber.short_phone_number,
        address: FFaker::Address.street_address,
        description: FFaker::Lorem.paragraph,
        category: Category.all.sample
      )
    
    Dir.glob("{Rails.root}/lib/assets/image/*.jpg").map do |pic|
      File.open(pic) do |f|  
      end
    end
    restaurant.save!
  end
    puts "have created fake restaurants"
    puts "now you have #{Restaurant.count} restaurants data"
  end
end