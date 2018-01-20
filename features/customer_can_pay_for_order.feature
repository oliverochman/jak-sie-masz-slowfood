@javascript @stripe @googlemap
Feature: Customer can pay for order
  As a customer
  In order to complete my purchase
  I need to be able to fill in a stripe payment form

  Background:
    Given the following restaurants exist
    | name              | street_address    | city     |
    | Oliver's Burger   | Kungsgatan 1      | Göteborg |

    Given the following products exist within a specific restaurant
    | name          | restaurant      | description      | category    | price |
    | Chicken wings | Oliver's Burger | Nice wings       | Starter     | 45    |
    | Double Burger | Oliver's Burger | Tasty fat burger | Main Course | 50    |

    Given I visit the "Oliver's Burger" show page

    Given the following order items exist in the order:
    | name          |
    | Chicken wings |
    | Double Burger |


  Scenario: User can fill in stripe form
    Given I visit the landing page
    And I click on "Order" link
    And I click on "Pay with Card" button
    And I fill in stripe form field "Email" with "random@random.com"
    And I fill in stripe form field "Card number" with "4242 4242 4242 4242"
    And I fill in stripe form field "Expiry" with "12/2021"
    And I fill in stripe form field "CVC" with "123"
    And I submit the stripe form
    Then I should be redirected to "order" page
