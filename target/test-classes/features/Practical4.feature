Feature: Practical4

  Background:
    * url 'http://dummy.restapiexample.com'

  Scenario: Testing a DELETE endpoint
    Given path '/api/v1/delete/719'
    And request {"status": "success","message": "successfully! deleted Records"}
    When method DELETE
    Then status 200

    * print response
