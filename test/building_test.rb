require "minitest/autorun"
require "minitest/pride"
require "./lib/apartment"
require "./lib/renter"
require "./lib/building"
require "pry"

class BuildingTest < MiniTest::Test
  def setup
    @building = Building.new
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms:1})
    @b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms:2})
    @spencer = Renter.new("Spencer")
    @b2.add_renter(@spencer)
    @building.add_unit(@a1)
    @building.add_unit(@b2)
    @jessie = Renter.new("Jessie")
    @a1.add_renter(@jessie)
  end

  def test_building_exists
    assert_instance_of Building, @building
  end

  def test_building_starts_with_no_units_by_default
    building = Building.new
    assert_equal [], building.units
  end

  def test_building_can_have_units_added
    assert_equal [@a1,@b2], @building.units
  end

  def test_building_has_average_rent
    assert_equal 1099.5, @building.average_rent
  end

  def test_can_check_renter_with_highest_rent
    assert_equal @jessie, @building.renter_with_highest_rent
  end


end
