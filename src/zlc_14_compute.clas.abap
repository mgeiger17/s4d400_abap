CLASS zlc_14_compute DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlc_14_compute IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA nmb1 TYPE i.
    DATA nmb2 TYPE i.

    nmb1 = -4.
    nmb2 = 3.

    DATA result TYPE p LENGTH 8 DECIMALS 2.

    result = nmb1 / nmb2.

    out->write( result ).

    DATA str_math TYPE c LENGTH 50.

    str_math = | { nmb1 } / { nmb2 } = { result } |.

    out->write( str_math ).
  ENDMETHOD.
ENDCLASS.
