@negative
Feature: Mock API - Check Employees Endpoint

    Scenario Outline: using expected vaules
        Given url baseUrl
        Given path "/api/v1/employees"
        And retry until responseStatus == 200
        When method GET
        And match responseType == 'json'
        * json schema = karate.readAsString('../resource/employees-schema.json')
        * def employees = get[0] response.data[?(@.employee_salary=='<salary>')]
        * match employees.employee_name == '<name>'
        * match response.data == '#[24]'
        Then match response == schema

        Examples:
            | name          | salary |
            | Haley Kennedy | 313500 |

    Scenario Outline: using unexpected values
        Given url baseUrl
        Given path "/api/v1/employees/false"
        And retry until responseStatus == 200
        When method GET
        And match responseType == 'json'
        * json schema = karate.readAsString('../resource/employees-schema.json')
        * def employes = get[0] response.data[?(@.employee_salary=='<salary>')]
        * match employes.employee_name == '<name>'
        * match response.data == '#[24]'
        Then match response == schema

        Examples:
            | name          | salary   |
            | Haley Kennedy | 313500   |
