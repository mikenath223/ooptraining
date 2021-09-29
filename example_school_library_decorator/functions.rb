def
  list_books(books, _user_select)
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
    end
  end
end
