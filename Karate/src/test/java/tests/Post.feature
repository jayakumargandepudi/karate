Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  #Simple Post request
  Scenario: Post Demo 1
    Given url'https://reqres.in/api/users'
    And request{ "name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response

  #Post with Background
  Scenario: Post Demo 1
    Given path '/users'
    And request{ "name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response
