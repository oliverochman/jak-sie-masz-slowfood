Feature: Customer can pay for order
  As a customer
  In order to complete my purchase
  I need to be able to fill in a stripe payment form

  Scenario: User can fill in stripe form
    # Given I visit orders page
    When I click on "Pay with Card" button
    And I fill I fill in stripe form field "Email" with "random@random.com"
    And I fill I fill in stripe form field "Card number" "4242 4242 4242 4242"
    And I fill I fill in stripe form field "Expiry" with "12/2021"
    And I fill I fill in stripe form field "CVC" with "123"
    And I submit the stripe form
    Then I should on the "confirmation" page
