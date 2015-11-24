class DockingStation
  def release_bike
    Bike.new
  end

  def docked?
    if $docked == true
      "#{Bike} is docked"
    else
      "#{Bike} is not docked"
    end
  end

end
