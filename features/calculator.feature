Feature: Calculator
  As a regular user
  I want to have a calculator to help me
  In order to keep my brain from melting

  Scenario: Add two numbers
    Given I have a calculator
    When I add 2 and 3
    Then the result should be 5