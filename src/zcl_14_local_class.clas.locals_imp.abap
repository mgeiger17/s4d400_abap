CLASS lcl_connection DEFINITION.

  PUBLIC SECTION.
    DATA carrier_id    TYPE /dmo/carrier_ID    READ-ONLY.
    DATA connection_id TYPE /dmo/connection_id READ-ONLY.

    CLASS-DATA conn_counter TYPE i READ-ONLY.

    METHODS constructor
      IMPORTING carrier_id    TYPE /dmo/carrier_ID
                connection_id TYPE /dmo/connection_id
      RAISING   cx_abap_invalid_value.

ENDCLASS.


CLASS lcl_connection IMPLEMENTATION.
  METHOD constructor.
    IF carrier_id IS INITIAL.
      RAISE EXCEPTION NEW cx_abap_invalid_value( value = 'carrier_id' ).
    ENDIF.
    IF connection_id IS INITIAL.
      RAISE EXCEPTION NEW cx_abap_invalid_value( value = 'connection_id' ).
    ENDIF.
    me->carrier_id    = carrier_id.
    me->connection_id = connection_id.

    conn_counter += 1.
  ENDMETHOD.
ENDCLASS.
