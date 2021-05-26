Feature: Practical3

  Background:
    * url 'http://dummy.restapiexample.com'

#    @mas
  Scenario: Testing a PUT endpoint
    Given path '/api/v1/update/21'
    And request {"name":"Aktewart Carl","salary":"130200","age":"46"}
    When method PUT
    Then status 200

    * print response

#    * match response == {"status": "#ignore", "data.name": "String", "data.salary": "#notnull", "data.age": "#number"}


    * match response == {"status":"#ignore","data":{"name":"#string","salary":"#string","age":"#regex [0-9]{2}"},"message":"#string"}

#    * match response == {"status":"#ignore","data":{"name":"#string","salary":"#present","age":"#regex [0-9]{2}"},"message":"#string"}

