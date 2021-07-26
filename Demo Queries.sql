/* Databases - Video Demo Queries */

/* Query 1 - Display all available routes */
SELECT RouteName AS 'Available Routes' FROM route;



/* Query 2 - Look at all flights available (with pricing, currency, departure date/time) */
SELECT flightprice.FlightPriceID AS 'Flight Key', route.RouteName AS 'Route', schedule.DepartureDate AS 'Departure Date', schedule.DepartureTime AS 'Departure Time', currency.CurrencySymbol AS 'Currency', flightprice.FlightPrice AS 'Price'
FROM flightprice
RIGHT JOIN flight
ON flightprice.FlightID = flight.FlightID
RIGHT JOIN route
ON flight.RouteID = route.RouteID
RIGHT JOIN schedule
ON flight.ScheduleID = schedule.ScheduleID
LEFT JOIN currency
ON flightprice.CurrencyID = currency.CurrencyID
WHERE currency.CurrencyID = 1
ORDER BY flightprice.FlightPriceID;


SELECT flightprice.FlightPriceID AS 'Flight Key', route.RouteName AS 'Route', schedule.DepartureDate AS 'Departure Date', schedule.DepartureTime AS 'Departure Time', currency.CurrencySymbol AS 'Currency', flightprice.FlightPrice AS 'Price'
FROM flightprice
RIGHT JOIN flight
ON flightprice.FlightID = flight.FlightID
RIGHT JOIN route
ON flight.RouteID = route.RouteID
RIGHT JOIN schedule
ON flight.ScheduleID = schedule.ScheduleID
LEFT JOIN currency
ON flightprice.CurrencyID = currency.CurrencyID
WHERE currency.CurrencyID = 2
ORDER BY flightprice.FlightPriceID;



/* Query 3 -  UPDATE all flights where Days Until Departure > 157 & < 180 by 5.00 */
UPDATE flightprice
SET flightprice.FlightPrice = (flightprice.FlightPrice + 5.00)
WHERE flightprice.FlightPriceID IN
(SELECT flightprice.FlightPriceID
FROM flightprice
INNER JOIN flight
ON flightprice.FlightID = flight.FlightID
INNER JOIN schedule
ON flight.ScheduleID = schedule.ScheduleID
INNER JOIN route
ON flight.RouteID = route.RouteID
WHERE DATEDIFF(schedule.DepartureDate, NOW()) > 157 AND DATEDIFF(schedule.DepartureDate, NOW()) < 180);



/* Query 4 - Compare options for Peter Quill's flight (incl. Departure Date/Time) for EURO */
/* Narrative - decide to pay in EURO, come back and see prices have been increased -> select flight */
SELECT route.RouteName AS 'Route', schedule.DepartureDate AS 'Departure Date', schedule.DepartureTime AS 'Departure Time', schedule.ArrivalDate AS 'Arrival Date', schedule.ArrivalTime AS 'Arrival Time', currency.CurrencySymbol AS 'Currency', flightprice.FlightPrice AS 'Price'
FROM flightprice
RIGHT JOIN flight
ON flightprice.FlightID = flight.FlightID
RIGHT JOIN route
ON flight.RouteID = route.RouteID
RIGHT JOIN schedule
ON flight.ScheduleID = schedule.ScheduleID
LEFT JOIN currency
ON flightprice.CurrencyID = currency.CurrencyID
WHERE route.RouteName = 'Berlin - Paris' AND currency.CurrencyID = 2;



/* Query 5 - INSERT TRANSACTION /*



/* Query 6 - insert Payment details */
INSERT INTO payment (BookerID, CardType, CardName, CardNumber, CardSecurityCode)
VALUES ('8', AES_ENCRYPT('Visa', 'mySecretKey8'), AES_ENCRYPT('Peter Quill','mySecretKey8'), AES_ENCRYPT('1234 5678 5678 1234','mySecretKey8'),
AES_ENCRYPT('909','mySecretKey8'));


SELECT AES_DECRYPT(CardType, 'mySecretKey8') AS "Card Type", AES_DECRYPT(CardName, 'mySecretKey8') AS "Card Holder Name", AES_DECRYPT(CardNumber, 'mySecretKey8') AS "Card Number", AES_DECRYPT(CardSecurityCode, 'mySecretKey8') AS "Card Security Code" FROM payment WHERE CardID = 8;



/* Query 7 - insert details into Booking Line Item table */
INSERT INTO bookinglineitem (BookingLineItemID, BookerID, LineItemName, LineItemCost, CurrencyID)
VALUES (NULL, '8', 'Berlin - Paris (Adult)', '36.99', '2'),
(NULL, '8', 'Food Voucher', '6.00', '2'),
(NULL, '8', 'Cabin Bag', '0.00', '2'),
(NULL, '8', '26kg Hold Bag', '39.99', '2');



/* Query 8 - sum up total price from Booking Line Items */
SELECT booker.BookerLastName AS 'Booker Surname', currency.CurrencySymbol AS 'Currency', SUM(bookinglineitem.LineItemCost) AS 'Booking Total'
FROM bookinglineitem
INNER JOIN booker
ON bookinglineitem.BookerID = booker.BookerID
INNER JOIN currency
ON bookinglineitem.CurrencyID = currency.CurrencyID
WHERE bookinglineitem.BookerID = 8;



/* Query 9 - assign seats -> insert seats for Peter and Thor */
INSERT INTO seating (SeatingID, SeatID, FlightID)
VALUES (NULL, '21', '15'), (NULL, '22', '15');

UPDATE passenger SET passenger.SeatingID = 13 WHERE passenger.PassengerID = 5;

UPDATE passenger SET passenger.SeatingID = 14 WHERE passenger.PassengerID = 21;

/* Query 10 - check seat availabilty */
SELECT COUNT(DISTINCT seat.SeatCode) AS 'Number of Seats'
FROM seat;


SELECT COUNT(seat.SeatCode) AS 'Booked Seats'
FROM seat
INNER JOIN seating
ON seat.SeatID = seating.SeatID
INNER JOIN flight
ON seating.FlightID = flight.FlightID
WHERE seating.FlightID = 15;
