@regression
Feature: Login - testing that users can login successfully to their existing account

  Background: shared steps between scenarios
    Given user clicks login button in header

  @smoke
  #Positive Scenario
  Scenario: user can use their email and password to login to their account
    When user enters username "alaa.wali7"
    And user enters password "P@ssword123"
    And user clicks on login button
    Then account opens successfully

  #Negative Scenario 1: wrong username
  Scenario: user cannot login with incorrect username
    When user enters incorrect username "incorrect.user"
    And user enters password "P@ssword123"
    And user clicks on login button
    Then error message "User does not exist." is displayed

    #Negative Scenario 2: wrong password
  Scenario: user cannot login with incorrect password
    #wrong password
    When user enters username "alaa.wali6"
    And user enters password "wrong_password"
    And user clicks on login button
    Then error message "Wrong password." is displayed

