require 'pry'

contacts = []

puts "Enter the number of contacts you want to add"

n = nil
loop do
  input = gets.chomp
  if input =~ /^\d+$/ && input.to_i > 0
    n = input.to_i
    break
  else
    puts "Please enter a valid positive number."
  end
end

i = 1
while i <= n
  begin
    puts "\nEnter the details of contact #{i}:"

    print "Name: "
    name = gets.chomp.strip
    raise "Name cannot be empty" if name.empty?

    print "Phone: "
    phone = gets.chomp.strip
    raise "Phone cannot be empty" if phone.empty?

    print "Email: "
    email = gets.chomp.strip
    raise "Email cannot be empty" if email.empty?

    contact = {
      name: name,
      phone: phone,
      email: email
    }

    contacts << contact
    i += 1

  rescue => e
    puts "Error: #{e.message}. Please enter the details again."
  end
end

puts "\nDetails of the contacts"
contacts.each_with_index do |contact, index|
  puts "Contact #{index + 1}:"
  puts "Name : #{contact[:name]}"
  puts "Phone: #{contact[:phone]}"
  puts "Email: #{contact[:email]}"
  puts "\n"
end


binding.pry
