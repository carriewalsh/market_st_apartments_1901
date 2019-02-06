class Building
  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    total_rents = 0
    @units.each do |unit|
      total_rents += unit.monthly_rent.to_f
    end
    (total_rents / @units.count).round(1)
  end

end
