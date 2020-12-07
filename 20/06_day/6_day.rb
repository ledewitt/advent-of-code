forms = File.open("data.dat").read.split("\n\n")

answers = forms.map{ |ans| ans }

#p answers[0].reduce

total_yes = 0

answers.each { |ans|
clean_string = ans.gsub("\n", "")

total_yes += clean_string.each_char.map{ |char| char }.uniq.count

}

p total_yes

everyone_yes = 0

answers.each { |ans|
  matching_answer = nil
  ans.split(" ").each { |person|

    if !matching_answer
        matching_answer = person.split("")
    end

    matching_answer = matching_answer & person.split("")
  }
  everyone_yes += matching_answer.count
}

p everyone_yes