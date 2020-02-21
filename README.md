# automation_sqa_test

Test to search flights in [Avianca](https://www.avianca.com/co/es/)

## Getting Started

These instructions will get you run the tests.

### Prerequisites

To run the test, is necessary that you install:
 - `Mac/Linux
 - `Homebrew`
 - `ruby` 2.6.5
 - `Chrome` Versión 79.0.3945.88
 - `ChromeDriver` 79.0.3945.36 ->
  ``` brew install chromedriver ```

### Installing

To install all gems, run this command:

```
bundle install
```
## Running the tests

To run the automated tests, you run this command:

```
cucumber            =  in terminal
```
```
Feature: Search flights
Background:
Given User is in Avianca home page
Scenario Outline: Automation test GREEN SQA
When Select place of destination '<city>' and airport '<airport>'
Then User select travel date '<date>'
And User select travel passagers number '<passagers>'
Then User search flights
And User select second flight

Examples:
    | city         | airport                           | date | passagers |
    | Medellín     | Aeropuerto José María Córdova     |  23  |    2      |
    | Ibagué       | Aeropuerto de Perales             |  25  |    4      |
    | Cali         | Aeropuerto Alfonso Bonilla Aragón |  26  |    1      |
    | Barranquilla | Aeropuerto Ernesto Cortissoz      |  27  |    2      |
```

## Built With

* [Ruby] [Cucumber] [Capybara] [Siteprism]

## Author

* **Harold Pineda Valiente ** - *Initial work* - [haroldpineda](https://github.com/haroldpineda)



