Feature: User can see restaurant's details on the restaurant show page
  As a user
  In order to get info about the restaurant
  I would like to see restaurant details

  Background:
    Given the following restaurants exist
    | name              | street_address    | city     | description                     |
    | Thomas Kebabrulle | Drottninggatan 1  | Göteborg | The best kebabrulle you can get |
    | Oliver's Burger   | Kungsgatan 1      | Göteborg | The best hamburger you can get  |
    | Borat's Palace    | Östra Hmangatan 1 | Göteborg | The best borat you can get      |

  @googlemap
  Scenario:
    When I visit the landing page
    And I click on "Visit" by "Thomas Kebabrulle"
    Then I should be on the "Thomas Kebabrulle" show page
    Then I would like to see "Thomas Kebabrulle"
    And I would like to see "The best kebabrulle you can get"
