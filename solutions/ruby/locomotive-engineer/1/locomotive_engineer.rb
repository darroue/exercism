class LocomotiveEngineer
  attr_reader :vagons
  
  def self.generate_list_of_wagons(*vagons)
    @vagons = vagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
     x, y, z, *rest = each_wagons_id
    
    [z, *missing_wagons, *rest, x, y]
  end

  
  def self.add_missing_stops(routing, **stops)
    {**routing, stops: stops.values}
  end

  def self.extend_route_information(route, more_route_information)
    {**route, **more_route_information}
  end
end
