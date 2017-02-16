def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  new_array = []
  for name in name_array
    new_array << badge_maker(name)
  end

  new_array
end

def assign_rooms(name_array)
  room_assigned_array = []

  room_number = 1
  for name in name_array
    room_assigned_array << "Hello, #{name}! You'll be assigned to room #{room_number}!"
    room_number += 1
  end
  room_assigned_array
end

def printer(attendees)

  idx = 0
  while idx < attendees.length
    puts batch_badge_creator(attendees)[idx]
    puts assign_rooms(attendees)[idx]
    idx += 1
  end

end
