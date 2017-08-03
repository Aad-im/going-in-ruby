movies = { #the code to put in the terminal: ruby learning_ruby.rb
  Starwars: 5,
  Avengers: 4.5,
  HarryPotter: 5,
  Frozen: 4,
  Cars: 3,
  Moana: 3.5,
}

puts "Type 'add', 'update', 'display',or 'delete'"
choice = gets.chomp

case choice
  when "add"
    puts "What movie would you like added: "
    title = gets.chomp
    
    if movies[title.to_sym].nil?
      puts "What is the rating (out of 5): "
      rating = gets.chomp.to_i
  
      if rating > 5
        puts "The rating is out of 5.Try again."
      else
        puts " "
      end
      movies[title.to_sym] = rating.to_i
      
      puts "#{title} has been added to the list of movies with a rating of #{rating} out of 5"
    else
      puts "This movie is already there.If you just want to change the rating type in update." 
    end
  
  when "update"
      puts "Which movie's rating would you like to select: "
      title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie isn't with us.You can go back and add it."
    else
      puts "What would you like to change the rating to."
      rating = gets.chomp.to_i
      movies[title.to_sym]= rating.to_i
      puts "#{title} now has a rating of #{rating} out of 5"
      
    
    if rating > 5
        puts "The rating is out of 5.Try again."
    else
        puts " "
    end
      
  end
  when "display"
    movies.each do |title, rating|
      puts "
      #{title}: #{rating}"
  end
  
  when "delete"
      puts "Pick a movie to be deleted from the list: "
      title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie isn't there, no need to delete."
    else
      movies.delete(title.to_sym)
      puts "#{title} has been removed."
  end
  else
    puts"Not processed!"
end