# entries = File.open("data.dat").do { |e| e.split("\n\n") }
text_entries = File.open("data.dat").read.split("\n\n")

# entries_data = entries.read
# p entries_data

p "Begin Text Entries:"
p text_entries[0]
# p text_entries[1]

h_entries = text_entries.map{ |thing| thing = thing.split(" ") } # ; {thing.first : thing.last} } reg ex white space /\s+/
valid_count = 0

h_entries.each { |entry|

# byr (Birth Year) - four digits; at least 1920 and at most 2002.
# iyr (Issue Year) - four digits; at least 2010 and at most 2020.
# eyr (Expiration Year) - four digits; at least 2020 and at most 2030.
# hgt (Height) - a number followed by either cm or in:
#   If cm, the number must be at least 150 and at most 193.
#   If in, the number must be at least 59 and at most 76.
# hcl (Hair Color) - a # followed by exactly six characters 0-9 or a-f.
# ecl (Eye Color) - exactly one of: amb blu brn gry grn hzl oth.
# pid (Passport ID) - a nine-digit number, including leading zeroes.
# cid (Country ID) - ignored, missing or not.
  
  if entry.count == 8
    
    valid_credentials = true

    entry.each{ |datum|
      the_pair = datum.split(":")

      case the_pair[0]
      when 'byr'
        if !the_pair[1].between?(1920,2002)
            valid_credentials = false
        end
      when 'iyr'
        if !the_pair[1].between?(2010,2020)
            valid_credentials = false
        end
      when 'eyr'
        if !the_pair[1].between?(2020,2030)
            valid_credentials = false
        end
      when 'hgt'
        # Need to figure out how to get in and cm off the end and check a range
        if !the_pair[1].between?(1920,2002)
            valid_credentials = false
        end
      when 'hcl'
        # Needs a reg ex to figure out if it is a alphanumric string of 6 chars
        if !the_pair[1].between?(1920,2002)
            valid_credentials = false
        end
      when 'ecl'
        # Need to check if it is a legal string
        if !the_pair[1].between?(1920,2002)
            valid_credentials = false
        end
      when 'pid'
        # Looking for a nine digit number, including zeros
        if !the_pair[1].between?(1920,2002)
            valid_credentials = false
        end
      end
      p datum
      p datum.class
    }
    valid_count +=1
    next
  end
  
  north_pole_credentials = true
  if entry.count == 7
    entry.each{ |datum|
      the_pair = datum.split(":")
      if the_pair[0] == 'cid'
        north_pole_credentials = false
      end
      p datum
      p datum.class
    }  #ent_hash = ent.map.to_s.split(":") { |key, value| }
    
    if north_pole_credentials
      valid_count += 1
    end
  end

  
  p entry
  #ent_hash.each { |k,v|
  #  p k
  #  p v
  #}
  # break
}


  p valid_count
# p "Begin Hashed Entries"
# p h_entries.each { |x|
#  p x[0]
#   break
# }