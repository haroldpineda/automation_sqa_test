Feature: Search flights
Background:
Given User is in Avianca home page
Scenario Outline: Automation test GREEN SQA
When Select place of destination '<city>' and airport '<airport>'
Then User select travel date '<date>'
And User select travel passagers number '<passagers>'
Then User search flights

Examples:
    | city         | airport                           | date | passagers |
    | Medellín     | Aeropuerto José María Córdova     |  23  |    2      |
    | Bucaramanga  | Aeropuerto Palonegro              |  24  |    3      |
    | Ibagué       | Aeropuerto de Perales             |  25  |    4      |
    | Cali         | Aeropuerto Alfonso Bonilla Aragón |  26  |    1      |
    | Barranquilla | Aeropuerto Ernesto Cortissoz      |  27  |    2      |
