START TRANSACTION;

	INSERT INTO passport (PassportNumber, DateOfBirth, NationalityCountryOfIssueID, ExpiryDate) 	VALUES ('PQ3850284', '1980-06-01', '1', '2026-05-27');
    SET @last_id_in_passport = LAST_INSERT_ID();

    INSERT INTO address (Address, Town, City, CountryID, Postcode)
    VALUES ('13 Bel Rae Ct', 'St. Charles', 'Missouri', '9', '63301');
    SET @last_id_in_address = LAST_INSERT_ID();

    INSERT INTO booker (TitleID, BookerFirstName, BookerLastName, BookerEmailAddress, AddressID, 	 TelephoneNumber, EmailUpdates, TotalPrice, CurrencyID, BookingMade)
    VALUES ('1', 'Peter', 'Quill', 'peter.quill@mcu.com', @last_id_in_address, '+1 636 438 			7710', 	  '0', '82.98', '2', CURRENT_TIMESTAMP);
    SET @last_id_in_booker = LAST_INSERT_ID();

    INSERT INTO bookingreference (BookerID, BookingReference, FlightPriceID, ReasonForTravel)
    VALUES (@last_id_in_booker, 'WOJ176', '35', '1');
    SET @last_id_in_bookingreference = LAST_INSERT_ID();

    INSERT INTO passenger (TitleID, PassengerFirstName, PassengerLastName, BookingReferenceID, 		PassportID, PassengerTypeID, SeatingID, PremiumFare, TravelInsurance, FoodVoucher, 				EasyJetPlusNumber)
    VALUES ('1', 'Peter', 'Quill', @last_id_in_bookingreference, @last_id_in_passport, '1', null, 	'0', '0', '1', null);
    SET @last_id_in_passenger = LAST_INSERT_ID();

    INSERT INTO passengerbaggage (PassengerID, BaggagePriceID)
    VALUES (@last_id_in_passenger, '16');

    INSERT INTO passengerbaggage (PassengerID, BaggagePriceID)
    VALUES (@last_id_in_passenger, '19');

COMMIT;
