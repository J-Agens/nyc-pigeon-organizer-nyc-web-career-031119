require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |general_attr, specifics|
    specifics.each do |bird_type, name_arr|
      name_arr.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {general_attr => []}
          new_hash[name][general_attr].push(bird_type.to_s)
        elsif !new_hash[name].has_key?(general_attr)
          new_hash[name][general_attr] = []
          new_hash[name][general_attr].push(bird_type.to_s)
        else
          new_hash[name][general_attr].push(bird_type.to_s)
        end
      end
    end
  end
  new_hash
end

# TRY INSERTING FOLLOWING LINE IN PLACE OF CURRENT 'binding.pry'
# new_hash[name] = {general_attr => []}
