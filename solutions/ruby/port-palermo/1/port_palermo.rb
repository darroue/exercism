module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.chars.first(4).join.upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    term = ship_identifier.to_s.chars.first(3).join.upcase.to_sym

    if %i(OIL GAS).include?(term)
      :A
    else
      :B
    end
  end
end
