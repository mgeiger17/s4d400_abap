CLASS zcl_14_demo_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_02 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    data result type p length 4 decimals 2.

    result = round( val = '55.5' dec = 0 ).
    out->write( result ).
  ENDMETHOD.
ENDCLASS.
