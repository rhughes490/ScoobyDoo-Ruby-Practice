def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  p person[:favourites][:snacks]
  if person[:favourites][:snacks].include?(food)
    return true
  else
    return false
  end
end

# def likes_to_eat(person, food)
#     for snack in person[:favourites][:snack]
#       if snack == food
  #     return true
  #     end
#     end
#    return false
# end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
  return person[:friends].length()
end
#person[:friends] << new_friend

def delete_friend(person, old_friend)
  friend_index = person[:friends].index(old_friend)
  person[:friends].delete_at(friend_index)
  return person[:friends].length()
end

# def remove_friend(person, old_friend)
# person[:friends].delete(old_friend)
# end

def total_money(people)   #function
  money = 0

    for person in people
        money += person[:monies]
        #person[:monies] = 0
   end

   return money
  

end



def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lender[:monies] += amount
end

def all_favorite_foods(people)
  favorite_foods = []
  for person in people
    for snack in person[:favourites][:snacks]
      favourite_foods.push(snack)
      # or
      # favourite_foods << snack
    end
  end
  return favorite_foods


  def find_no_friends(people)
    no_mates = []
    for person in people
      if person[:friends].length == 0
        no_mates.push(person)
      end
    end
    return no_mates
  end
