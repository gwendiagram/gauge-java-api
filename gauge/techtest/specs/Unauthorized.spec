Unauthorized
============

tags: unauthorised

This spec file details the interaction with the unauthorised endpoint and the expected results
of those actions
     
Unauthorized is returned when doing a POST to the /unauthorized endpoint
------------------------------------------------------------------------

* Post to the "unauthorized" endpoint
* Then the response will be "Unauthorized"
* The response code should be "401"

OK is returned when doing a GET to the /unauthorized endpoint
-------------------------------------------------------------

* Get to the "unauthorized" endpoint
* Then the response will be "OK"
* The response code should be "200"

Details of the last response is returned when doing a GET to /unauthorized/last endpoint
----------------------------------------------------------------------------------------

* Get to the "unauthorized/last" endpoint
// Implement a step that checks the response contains the correct details
