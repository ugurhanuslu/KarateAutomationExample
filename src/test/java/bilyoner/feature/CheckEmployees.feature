@positive
Feature: Check Employees Endpoint


    Scenario Outline: Using Expected Vaules
        #Get baseUrl according to env parameter
        Given url baseUrl
        Given path "/api/v1/employees"
        #Retry 10 times for every 5 seconds for API's DDOS protection until response code is 200
        And retry until responseStatus == 200
        When method GET
        #Check responseType for correct response
        And match responseType == 'json'
        #Check response json format to catch any change in response data
        * json schema = karate.readAsString('../resource/employees-schema.json')
        * match response == schema
        #Compare response data length with expected
        * match response.data == '#[24]'
        #Get the information of the expected salaried employee
        * def employees = get[0] response.data[?(@.employee_salary=='<salary>')]
        #Compare the expected salaried employee's name with the expected name
        Then match employees.employee_name == '<name>'


        Examples:
            | name          | salary |
            | Haley Kennedy | 313500 |

