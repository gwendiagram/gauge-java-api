MadeUp
======

tags: made_up

This spec file details the interaction with the made_up endpoint and the expected results
of those actions
     
Made up is returned when doing a POST to the /made_up endpoint
----------------------------------------------------------------------

* Post to the "made_up" endpoint
* Then the response will be "Not Found"
* The response code should be "404"

OK is returned when doing a GET to the /made_up endpoint
------------------------------------------------------------

* Get to the "made_up" endpoint
* Then the response will be "OK"
* The response code should be "200"

Details of the last response is returned when doing a GET to /made_up/last endpoint
---------------------------------------------------------------------------------------

* Get to the "made_up/last" endpoint
// Implement a step that checks the response contains the correct details
