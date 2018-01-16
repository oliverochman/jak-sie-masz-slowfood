Feature: User can see a list of restaurants on the landing page
  As a user
  In order to choose a restaurant
  I would like to see a list of restaurants on the landing page

  Background:
    Given the following restaurants exist
    | name              | street_address    | city     |
    | Thomas Kebabrulle | Drottninggatan 1  | Göteborg |
    | Oliver's Burger   | Kungsgatan 1      | Göteborg |
    | Borat's Palace    | Östra Hmangatan 1 | Göteborg |

  @googlemap
  Scenario:
    When I visit the landing page
    Then I would like to see "Thomas Kebabrulle"
    And I would like to see "Oliver's Burger"
    And I would like to see "Borat's Palace"
