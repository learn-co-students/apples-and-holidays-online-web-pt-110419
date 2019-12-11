require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  
  second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer]{:fourth_of_july][1]
end 
  


def add_supply_to_winter_holidays(holiday_hash, supply)
    add_supply_to_winter_holidays(holiday_supplies)
  holiday_supplies[:winter]{:winter_holiday][1]

end


def add_supply_to_memorial_day(holiday_hash, supply)
  add_supply_to_memorial_day(holiday_supplies)
  holiday_supplies[:Spring]{:Memorial_day][1]

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  add_new_holiday_with_supplies(holiday_supplies)
  holiday_supplies[:season]{:holiday_hash][1]

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







