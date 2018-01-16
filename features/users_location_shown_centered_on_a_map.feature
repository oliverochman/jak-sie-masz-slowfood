@javascript
Feature: User geo location
  As a system owner,
  In order to present restaurants in the user's area,
  I would like to access user's browser or IP address

  Background:
    Given the following restaurants exist
      | name              | street_address    | city     |
      | Thomas Kebabrulle | Drottninggatan 1  | Göteborg |
      | Oliver's Burger   | Kungsgatan 1      | Göteborg |

  And I am at latitude: "59.33", longitude: "18.05"

  @googlemap
  Scenario: Users location is at the center of the map
    Given I visit the landing page
    And the map has been loaded
    Then the center of the map should be approximately "59.334591" lat and "18.063240" lng
