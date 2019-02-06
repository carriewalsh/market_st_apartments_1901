require "minitest/autorun"
require "minitest/pride"
require "./lib/apartment"
require "./lib/renter"
require "pry"

class ApartmentTest < MiniTest::Test
  def setup
    @jessie = Renter.new("Jessie")
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms:1})
    @a1.add_renter(@jessie)
  end

  def test_apartment_exists
    assert_instance_of Apartment, @a1
  end

  def test_apartment_has_number
    assert_equal "A1", @a1.number
  end

  def test_apartment_has_monthly_rent
    assert_equal 1200, @a1.monthly_rent
  end

  def test_apartment_has_how_many_bedrooms
    assert_equal 1, @a1.bedrooms
  end

  def test_apartment_has_how_many_bathrooms
    assert_equal 1, @a1.bathrooms
  end

  def test_apartment_has_no_renter_by_default
    a2 = Apartment.new({number: "A2",monthly_rent: 1200,bathrooms: 1, bedrooms:1})
    assert_nil a2.renter
  end

  def test_apartment_has_renter
    assert_equal @jessie, @a1.renter
  end

end
