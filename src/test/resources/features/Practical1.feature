Feature: Practical1

  Background:

  @Practical
    Scenario: Test Learning

#      Given url 'https://reqres.in/api/users/2'
#      When method get
#      Then status 200
#      And print response

      Given def num1 = 15
      Given def num2 = 10

      Then assert num1+num2 == 25
      Then assert num1-num2 == 5
      Then assert num1/num2 == 1.5
      Then assert num1*num2 == 150
    
      Then print num1+num2


