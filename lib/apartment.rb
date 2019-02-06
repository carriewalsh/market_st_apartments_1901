class Apartment
  attr_reader :number, :monthly_rent, :bedrooms, :bathrooms, :renter
  def initialize(apartment_info)
    @number = apartment_info[:number]
    @monthly_rent = apartment_info[:monthly_rent]
    @bedrooms = apartment_info[:bedrooms]
    @bathrooms = apartment_info[:bathrooms]
    @renter = nil
  end

  def add_renter(name)
    @renter = name
  end
end
