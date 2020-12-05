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
  if entry.count == 8
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