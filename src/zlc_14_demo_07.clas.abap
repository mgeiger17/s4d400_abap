CLASS zlc_14_demo_07 DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zlc_14_demo_07 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA flight_price TYPE /dmo/flight_price.

    " Lesender Zugriff auf einen Datensatz:

    SELECT SINGLE FROM /dmo/flight
      FIELDS price
      WHERE carrier_id = 'LH' AND connection_id = '0400' AND flight_date = '20240707'
      INTO @flight_price.  " INTO @DATA(flight_price).#

    out->write( flight_price ).

    " ---------------------------------------

    " Lesender Zugriff auf mehrere Datensätze:
    DATA carrier_id TYPE /dmo/carrier_id.
    carrier_id = 'LH'.

    SELECT FROM /dmo/flight
      FIELDS price
      WHERE carrier_id = @carrier_id
      INTO TABLE @DATA(flight_price_1).

    out->write( flight_price_1 ).

    " ---------------------------------------

    " Schleife für mehrer Datensätze gespeichert in einer variable
    SELECT FROM /dmo/flight
      FIELDS price
      WHERE carrier_id = @carrier_id
      INTO @flight_price.

      out->write( flight_price ).

    ENDSELECT.

    " ---------------------------------------

    " alternative zur inline Deklaration:

    DATA flight_self_made TYPE /dmo/flight.

    SELECT SINGLE FROM /dmo/flight
      FIELDS *
      WHERE carrier_id = 'LH' AND connection_id = '0400' AND flight_date = '20240707'
      INTO @flight_self_made. " INTO  @DATA(flight).

    out->write( flight_self_made ).
  ENDMETHOD.
ENDCLASS.
