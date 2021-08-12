#Author Rohith Ravi
@hotelBookingAPI @api
Feature: HotelBookingAPI

  Background:
    Given I make REST service headers with the below fields
      | Accept           | Content-Type     |
      | application/json | application/json |
    When I read the message Body from the file "authorisation"
    And I get the token for authentication
    Given I put token for authentication in the header

  @hotelBookingAPI1 @regression
  Scenario Outline: Partially update the Hotel Booking and verify the details get updated or not
    When I read the message Body from the file "updateBooking"
    And I update request message body with the below details
      | firstname   | lastname   |
      | <firstname> | <lastname> |
    When user calls "Booking" with "PATCH" http request and param "/<id>"
    And I should get the response code as "200"
    Given I make REST service headers with the below fields
      | Accept           | Content-Type     |
      | application/json | application/json |
    When user calls "Booking" with "GET" http request and param "/<id>"
    And "firstname" in response body is "<firstname>"
    And "lastname" in response body is "<lastname>"

    Examples:
      | firstname | lastname | id |
      | Dan       | Brown    | 2  |
      | Eric      | Jones    | 3  |
      | Susan     | Mary     | 4  |

  @hotelBookingAPI2 @regression
  Scenario Outline: Delete a hotel booking and verify it is successful or not
    When user calls "Booking" with "GET" http request and param "/<id>"
    And I should get the response code as "200"
    When user calls "Booking" with "DELETE" http request and param "/<id>"
    And I should get the response code as "201"

    Examples:
      | id |
      | 7  |