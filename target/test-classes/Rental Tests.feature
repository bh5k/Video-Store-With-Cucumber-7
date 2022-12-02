Feature: Calculate Rental Costs
  
  User Story:  As a Video Store Owner, I want to calculate 
  my customers fees accurately so that they are neither over nor under charged
  
  Business Rules:
  For Regular movies, the fee is $2.00 for the first two days and $1.50 per day thereafter

  Scenario: Empty Rental
    Given I am an existing customer named "Bob Smith"
    When I rent no movies
    Then my bill is 0.0

  Scenario Outline: Single Movie Rentals
    Given I am an existing customer named <Name>
    When I rent <Movie Title> of <Movie Type> for <Days>
    Then my bill is <Amount>

    Examples: 
      | Name       | Movie Title    | Movie Type    | Days | Amount |
      | "Brigitte" | "Spiderman"    | "Regular"     |    1 |    2.0 |
      | "Nguyen"   | "Batman"       | "Regular"     |    3 |    3.5 |
      | "Bill"     | "Wonder Woman" | "New Release" |    1 |    3.0 |
      | "Lisa"     | "Dunkirk"      | "New Release" |    3 |    9.0 |
      | "Tori"     | "Babe"         | "Childrens"   |    1 |    1.5 |
      | "Thomas"   | "Lion King"    | "Childrens"   |    4 |      3 |
      | "Thomas"   | "Lion King"    | "Regular"     |   40 |     59 |
