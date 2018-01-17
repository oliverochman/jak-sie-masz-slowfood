Feature: User can see products sorted by categories
  As a user
  In order to choose more easily
  I would like to see the products sorted in categories

  Background:
    Given the following restaurants exist
      | name              | street_address    | city     |
      | Thomas Kebabrulle | Drottninggatan 1  | Göteborg |
      | Oliver's Burger   | Kungsgatan 1      | Göteborg |
      | Borat's Palace    | Östra Hmangatan 1 | Göteborg |

    Given the following products exist within a specific restaurant and category
      | name              | restaurant      | category    | menu  |
      | Chicken wings     | Oliver's Burger | Starter     | Lunch |
      | Double Burger     | Oliver's Burger | Main Course | Lunch |
      | Apple pie         | Oliver's Burger | Dessert     | Lunch |
      | Apple pie         | Borat's Palace  | Starter     | Lunch |
      
    @googlemap
    Scenario:
      When I visit the "Oliver's Burger" show page
      Then I would like to see "Chicken wings" under the "Starter" category
      And I would like to see "Double Burger" under the "Main Course" category
      And I would like to see "Apple pie" under the "Dessert" category
      And I would not like to see "Apple pie" under the "Starter" category
