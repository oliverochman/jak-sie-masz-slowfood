Feature: Restaurant multiple menus
  As a user
  In order to know what dishes are currently available
  I would like to see products sorted in menus

  Background:
    Given the following restaurants exist
      | name              | street_address    | city     |
      | Thomas Kebabrulle | Drottninggatan 1  | Göteborg |
      | Oliver's Burger   | Kungsgatan 1      | Göteborg |
      | Borat's Palace    | Östra Hmangatan 1 | Göteborg |

    Given the following products exist within a specific restaurant and category
      | name              | restaurant      | category    | menu       |
      | Chicken wings     | Oliver's Burger | Starter     | Lunch      |
      | Double Burger     | Oliver's Burger | Main Course | À la carte |

      @googlemap
      Scenario:
        When I visit the "Oliver's Burger" show page
        Then I would like to see "Chicken wings" under the "Lunch" menu
        And I would like to see "Double Burger" under the "À la carte" menu
