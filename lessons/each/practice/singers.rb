# Use .each to complete the following:

singers = ["billie", "ariana", "lizzo", "leon"]

# 1. Can you print out their names capitalized?

capitalized_names = []

singers.each do |singer|
    capitalized_names << singer.capitalize
end

# puts capitalized_names

# 2. Can you print out their names in all caps?

all_caps_names = []

singers.each do |singer|
    all_caps_names << singer.upcase
end

# puts all_caps_names

# 3. Can you print out their names but reversed? (["leon", "lizzo", "ariana", "billie"])

reversed_names = []

singers.reverse.each do |singer|
    reversed_names <<  singer
end

# puts reversed_names

# 4. Can you create a new array with only the names that are longer than four letters in length?

longer_names = []

singers.each do |singer|
    if singer.length > 4
        longer_names << singer 
    end
end 

puts longer_names

# 5. Can you create a new array with the lengths of their names?

name_lengths = []

singers.each do |singer|
    name_lengths << singer.length
end

puts name_lengths