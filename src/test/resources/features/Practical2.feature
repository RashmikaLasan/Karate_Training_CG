Feature: Practical2

  Background:
#    * url 'http://dummy.restapiexample.com'

  @mad
Scenario: Testing a POST endpoint with request body
  Given url 'http://dummy.restapiexample.com/api/v1/create'
  And request {"name":"Stewart Carl","salary":"123000","age":"46"}
  When method POST
  Then status 200
  And print 'Response is: ', response
  And match response.data.name == 'Stewart Carl'
  And match response.data contains == {"salary": "123000"}



#  And match response.data.salary = '123000'
#  And match response.data.age = '46'


#
  Scenario: Testing a GET endpoint
#    Given url 'http://dummy.restapiexample.com/api/v1/employee/1'
    Given path '/api/v1/employee/1'
    When method GET
    Then status 200
    And print response
    And match response.data.employee_name contains 'Tiger'
    Then assert response.data.employee_salary>120000
    Then assert response.data.employee_age>40 && response.data.employee_age<65
     match response == {status: '#regex [A-Z]{3}'



#  @ignore
#  Scenario: Testing a Post Viator Pricing Matrix
#    Given url 'http://prelive.viatorapi.viator.com/service/booking/availability/tourgrades/pricingmatrix'
#    And request {"productCode": "133323P2","month": "02","year": "2021","currencyCode": "GBP"}
#    And header exp-api-key = '06f71ae2-ed80-43fc-9c1c-ecd4b3681585'
#    When method POST
#    Then status 200
#    And print response
