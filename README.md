# BilyonerAPIAutomation

![alt text](https://imgtr.ee/images/2024/04/23/1d436f0b63053d21d38bade6165b8203.png "Bilyoner")


### Installation

This project requires you to install
1. Java 8
2. Maven
3. Cucumber for Java Plugin


After installation, you can use these commands to run tests


To test positive scenarios with restapiexample API
```sh
$ mvn clean test "-Dkarate.options=--tags @positive"
````
To test negative scenarios with my Mock API <br />
Mock API has the "/api/v1/employees/false" endpoint that returns modified employee data.
```sh
$ mvn clean test "-Dkarate.options=--tags @negative" -Denv=mock
```

### Reporting
You can find the test reports in "/target/surefire-reports" path.
![alt text](https://imgtr.ee/images/2024/04/23/094d16533a1ecbeccd13d673f25de9b3.png "Bilyoner")


