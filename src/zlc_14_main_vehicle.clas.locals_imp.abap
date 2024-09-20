CLASS lcl_vehicle DEFINITION.

  PUBLIC SECTION.
    DATA model        TYPE string.
    DATA make         TYPE string.
    DATA speed_in_kmh TYPE i.

    CLASS-DATA number_of_vehicles TYPE i.

    " public void accelerate(int value) { speedInKmh += value; }
    METHODS accelerate
      IMPORTING !value TYPE i.

    METHODS brake
      IMPORTING !value TYPE i
      RAISING   cx_abap_invalid_value.

    " puclic String toSTring() { return make + ", "  + model + ", "  + speedInKmh; }
    METHODS to_string
      RETURNING VALUE(dummy) TYPE string.

ENDCLASS.


CLASS lcl_vehicle IMPLEMENTATION.
  METHOD accelerate.
    speed_in_kmh += value.
  ENDMETHOD.

  METHOD brake.
    IF value > speed_in_kmh.
      RAISE EXCEPTION NEW cx_abap_invalid_value( ). " Falls diese Exception ausgerufen wird, dann wird der Code an dieser Stelle abgebrochen .
    ENDIF.

    speed_in_kmh -= value.
  ENDMETHOD.

  METHOD to_string.
    RETURN |{ make } { model } { speed_in_kmh } |.
    " dummy = |{ make } { model } { speed_in_kmh } |.
  ENDMETHOD.
ENDCLASS.
