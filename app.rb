require './student'
require './teacher'
require './book'
require './rental'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    puts 'No books added yet!' unless @books.length
    @books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
  end

  def list_people
    @people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def person_data
    print 'New student? Enter [1] | New teacher Enter [2]: '
    category = gets.chomp
    if category != '1' && category != '2'
      puts 'Invalid option'
      return
    end

    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    [category, age, name]
  end

  def new_person
    data = person_data
    person =
      case data[0]
      when '1'
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        parent_permission = permission.downcase == 'y'

        Student.new(data[1], parent_permission, data[2])
      when '2'
        print 'Specialization: '
        specialization = gets.chomp

        Teacher.new(data[1], specialization, data[2])
      end

    @people << person
    puts 'Person created successfully'
  end

  def new_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    @books << Book.new(title, author)
    puts 'Book created successfully'
  end

  def new_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
    book_index = gets.chomp.to_i

    puts "\nSelect a person from the following list by number (not id)"
    @people.each_with_index do |person, index|
      puts "#{index} : [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    person_index = gets.chomp.to_i

    print "\nDate: "
    date = gets.chomp

    @rentals << Rental.new(date, @books[book_index], @people[person_index])
    puts 'Rental created successfully'
  end

  def list_rentals_by_id
    print 'Person\'s ID: '
    id = gets.chomp.to_i

    rentals = @rentals.filter { |rental| rental.person.id == id }
    puts 'Rentals:'
    rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
    end
  end
end
