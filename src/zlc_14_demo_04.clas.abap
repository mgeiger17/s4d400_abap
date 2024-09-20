CLASS zlc_14_demo_04 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlc_14_demo_04 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA flight_date TYPE /dmo/flight_date VALUE '20240917'.
    DATA carrier_id  TYPE /dmo/carrier_id  VALUE 'LH'.

    " Logische Operatoren: AND, Or, NOT

    " Vergleichsoperatoren: <, <=, >, >=, =, <>

    IF flight_date >= '20240101' AND flight_date < '20250101' OR carrier_id <> 'AA'.
      out->write( 'IF 1 ist erfüllt' ).
    ELSE.
      out->write( 'IF 1 ist nicht erfüllt' ).
    ENDIF.
    IF flight_date BETWEEN '20240101' AND '20250101'.
      out->write( 'IF 2 ist erfüllt' ).
    ENDIF.

    IF carrier_id IS INITIAL.
      out->write( 'Die Carrier Id ist Initial' ).
    ENDIF.

    out->write(
        COND #( WHEN flight_date BETWEEN '20240101' AND '20250101' THEN 'Cond erfüllt' ELSE 'Cond nicht erfüllt' ) ).

    "-----
    " Fallunterscheidung

    CASE carrier_id.
      WHEN 'LH'.
        out->write( 'Lufthansa' ).
      WHEN 'AA'.
        out->write( 'American Airlines' ).
      WHEN OTHERS.
        out->write( carrier_id ).
    ENDCASE.

    out->write( SWITCH #( carrier_id
                          WHEN 'LH' THEN 'Lufthanse'
                          WHEN 'AA' THEN 'American Airlines'
                          ELSE           carrier_id ) ).
  ENDMETHOD.
ENDCLASS.
