# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

reservation = HotelReservation.new({customer_name: "Josh", date: "3/24/17", room_number: "351"})

p reservation

# change the room number after the reservation has been created
reservation.room_number = "236"
if reservation.room_number == "236"
  p "PASS!" 
else
  p "FAIL!"
end

# test the add_a_fridge method
reservation.add_a_fridge

# probably a better way to do this...
if reservation.amenities.include? "fridge"
  p "PASS!"
else
  p "FAIL!"
end

#test the add_a_crib method

reservation.add_a_crib


if reservation.amenities.include? "crib"
  p "PASS!"
else
  p "FAIL!"
end


#thest the add_a_custom_amenity method

reservation.add_a_custom_amenity("extra large bed")

if reservation.amenities.include? "extra large bed"
  p "PASS!"
else
  p "FAIL!"
end
