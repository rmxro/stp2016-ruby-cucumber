@stp
Feature: Order Online
As a hungry gamer I want to order pizza online so that I can keep gaming while they deliver my food. Ya dig?

Scenario: Delivery Address
  Given I have entered a valid address
  When I continue to delivery
  Then all entrees are avialable for order