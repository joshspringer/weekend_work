# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class.

# The Tv class will have the attributes: power, volume, and channel.

class TV
  attr_accessor :power, :volume, :channel

  def initialize(input_options)
    @power = input_options[:power]
    @volume = input_options[:volume]
    @channel = input_options[:channel]
  end
end

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.

class Remote
  def initialize(tv)
    @tv = tv
  end

# The Remote will have the following instance methods:

  # toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
  def toggle_power
    @tv.power = !@tv.power
  end

  # increment_volume (this will increase the tv's volume by 1)
  def increment_volume
    @tv.volume += 1
  end

  # decrement_volume (this will decrease the tv's volume by 1)
  def decrement_volume
    @tv.volume -= 1
  end

  # set_channel (this will change the tv's channel to whatever integer is passed to this method)
  def set_channel(i)
    @tv.channel = i
  end
end

my_tv = TV.new({power: true, volume: 5, channel: 54})

my_remote = Remote.new(my_tv)

p my_remote

# test the toggle_power method
my_remote.toggle_power
if my_tv.power == false
  p 'PASS!'
else
  p 'FAIL!'
end

my_remote.toggle_power
if my_tv.power == true
  p 'PASS!'
else
  p 'FAIL!'
end

# test the increment_volume method

my_remote.increment_volume
if my_tv.volume == 6
  p 'PASS!'
else
  p 'FAIL!'
end

# test the decrement_volume method

my_remote.decrement_volume
my_remote.decrement_volume
if my_tv.volume == 4
  p 'PASS!'
else
  p 'FAIL!'
end

# test the set_channel method

my_remote.set_channel(6)

if my_tv.channel == 6
  p 'PASS!'
else
  p 'FAIL!'
end
