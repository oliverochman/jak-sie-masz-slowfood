Feature: User can see product list on the restaurant show page
  As a user,
  In order to make a choice,
  I would like to see a restaurant's product list

  Background:
    Given the following restaurants exist
    | name              | street_address    | city     |
    | Thomas Kebabrulle | Drottninggatan 1  | Göteborg |
    | Oliver's Burger   | Kungsgatan 1      | Göteborg |
    | Borat's Palace    | Östra Hmangatan 1 | Göteborg |

    Given the following products exist within a specific restaurant
    | name              | restaurant      | description      |
    | Chicken wings     | Oliver's Burger | Nice wings       |
    | Double Burger     | Oliver's Burger | Tasty fat burger |
    | Apple pie         | Oliver's Burger | Sweet pie        |

  @googlemap
  Scenario:
    When I visit the "Oliver's Burger" show page
    Then I would like to see "Chicken wings"
    And I would like to see "Double Burger"
    And I would like to see "Apple pie"
