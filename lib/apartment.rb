class Apartment
  attr_reader :number, :monthly_rent, :bedrooms, :bathrooms, :renter
  def initialize(number:, monthly_rent:, bedrooms:, bathrooms:)
    @number = number
    @monthly_rent = monthly_rent
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @renter = nil
  end

  def add_renter(name)
    @renter = name    
  end
end
