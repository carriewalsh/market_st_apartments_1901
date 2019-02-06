require "minitest/autorun"
require "minitest/pride"
require "./lib/renter"

class RenterTest < MiniTest::Test
  def setup
    @jessie = Renter.new("Jessie")
  end


  def test_renter_exists
    assert_instance_of Renter, @jessie
  end


  def test_renter_has_name
    assert_equal "Jessie", @jessie.name
  end
end
