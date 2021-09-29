def list_books(books, userSelect)
    book_list = ["Rapunzel", "Oliver Twist", "Othello", "Romeo and Juliette"]
    people = ["John", "Isaac", "Emma", "Victor"]
    until !userSelect do
    if books == 1
        puts "The following is a list of books"
        puts book_list
        break
    elsif books == 2
        puts "The following is a list of people"
        puts people
        break
    elsif books == 3
        puts "You have selected " + books.to_s
        break
    elsif books == 4
        puts "You have selected " + books.to_s
        break
    elsif books == 5
        puts "You have selected " + books.to_s
        break
    elsif books == 6
        puts "You have selected " + books.to_s
        break
    elsif books == 7
        puts "Bye. See you next time "
        break
    end
    end
end
