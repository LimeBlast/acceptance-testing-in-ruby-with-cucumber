Feature: Calculator
  As a regular user
  I want to have a calculator to help me
  In order to keep my brain from melting

  Background:
    Given I have a calculator

  Scenario: Add two numbers
    When I add 2 and 3
    Then the result should be 5

  Scenario: Multiplay two numbers
    When I multiply 2 and 3
    Then the result should be 6