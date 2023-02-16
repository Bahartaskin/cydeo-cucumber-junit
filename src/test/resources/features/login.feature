
@regression @smoke @login
Feature: Library app login feature
  User Story:
  As a user, I should be able to login with correct credentials to different
  accounts. And dashboard should be displayed.

  Accounts are: librarian, student, admin

  Background: for the scenarios in the feature file, user is expected to be on login page
    Given user is on the library login page

  @librarian @wip #work in progress
  Scenario: Login as librarian
    When user enters librarian username
    And user enters librarian password
    Then user should see the dashboard

  @student @db #dataBase
  Scenario: Login as student
    When user enters student username
    And user enters student password
    Then user should see the dashboard

  @admin @employee
  Scenario: Login as admin
    When user enters admin username
    And user enters admin password
    Then user should see the dashboard

#this is how we add comments in feature file

#- We can use tags to include or exclude some scenarios.
#- If we put the @Tag on top of the .feature file, it will effect the whole feature file
#- If we put it on top of a Scenario, it will only effect that scenario
#- You can have as many tags as you want for a feature file or a scenario