require 'pry'
holiday_hash = {
       :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
       },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season].store(holiday_name, supply_array)
  # remember to return the updated hash
return holiday_hash
end

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
#},
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter].map {|k, v| v.push supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push supply

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
array = []
holiday_hash[:winter].each {|k,v| array.push v}
array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.map do |key, value|
  puts "#{key.capitalize}:" # PRINT SEASON
  value.map {|key, value| 
  puts "  #{key.capitalize.to_s.gsub("_y", " Y").gsub("h_of_j", "h Of J").gsub("l_d", "l D")}: #{value.join(", ")}"}
end


end
all_supplies_in_holidays(holiday_hash)
def all_holidays_with_bbq(holiday_hash)
  arr = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.each {|key, value| value.each {|key, value|
      if value.include?("BBQ")
        arr << key
      end
  }
  }
arr
end