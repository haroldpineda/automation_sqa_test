Feature: Search flights

  Scenario: Automation test GREEN SQA
    Given User is in Avianca home page
    When Select place of destination 'Bucaramanga'
    Then User select travel date '2 Mar. 2020'
    And User select travel passagers number '2'
    Then User search flights
