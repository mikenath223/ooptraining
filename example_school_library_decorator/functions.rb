def
  list_books(books, userSelect)
  book_list = ['Rapunzel', 'Oliver Twist', 'Othello', 'Romeo and Juliette']
  people = %w[John Isaac Emma Victor]
  while userSelect
    case books
    when 1
      puts 'The following is a list of books'
      puts book_list
      break
    when 2
      puts 'The following is a list of people'
      puts people
      break
    when 3
      puts "You have selected #{books}"
      break
    when 4
      puts "You have selected #{books}"
      break
    when 5
      puts "You have selected #{books}"
      break
    when 6
      puts "You have selected #{books}"
      break
    when 7
      puts 'Bye. See you next time '
      break
    end
  end
end
