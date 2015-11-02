=begin
Pseudo Code

0. Display menu
- Ask user to pick an action

1. create empty list
- ask user for list name
- get list name
- create empty list via hash

2. add item to list
- ask user for item
- update list via method

3. remove item 
- ask user for item to remove
- update list via method

4. update quantities
- ask user for item to update
- ask user for quantities to add
- update list via method

5. print out list
- display the list via method
=end

def display_menu
  number = 1000
  while (number != 0)
  puts "Choose one of the following actions:"
  puts "1: Create a new list."
  puts "2: add item to list."
  puts "3: Remove item from list."
  puts "4: Update quantities."
  puts "5: Print list."
  
  puts "Choose the number for the action you want to perform: "
  number = gets.chomp.to_i
  
  if (number == 1)
    shopping_list = create_list() 
  elsif (number == 2)
    shopping_list['items'].push(item_add())
  elsif (number == 3)
    shopping_list['items'].delete(item_remove(shopping_list)) 
  elsif (number == 4)
    puts "What item do you want to update: "
    item = gets.chomp
    puts "What is the new quantity: "
    qty = gets.chomp.to_i
    update(item, qty, shopping_list) 
  elsif (number == 5)
    print_list(shopping_list)   
  else
    puts "Have a nice day."
    return nil
  end
  end
end


def create_list()
  print "What is the name of your list? "
  name = gets.chomp
  
  list_hash = {'name' => name, 'items' => Array.new}
  return list_hash
end

# Ask user for new item to add and how maany
def item_add()
  print "What is the item ? "
  item = gets.chomp

  print "How many would like to add? "
  quant = gets.chomp.to_i

  item_hash = {'item' => item, 'quantity' => quant}

  return item_hash
end

def item_remove(list)
  print "What is the item ? "
  item = gets.chomp
  list['items'].each do |key|
    if (key['item'] == item)
        return {'item' => key['item'], 'quantity' => key['quantity']}
    end
  end
end


def update (item, quantity, list)
    list['items'].each do |key|
    if (key['item'] == item)
        key['quantity'] = quantity
    end
  end
end

def print_list(list)
  puts "List: #{list['name']}" 
  puts " ------"
  
  list['items'].each do |key|
    puts "Item: " + key['item'].to_s + "  Quantity: " + key['quantity'].to_s
    puts "----"
  end
end
display_menu