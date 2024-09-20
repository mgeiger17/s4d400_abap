CLASS zcl_14_local_class DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_14_local_class IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA connection  TYPE REF TO lcl_connection.
    DATA connections TYPE TABLE OF REF TO lcl_connection.

    TRY.
        connection = NEW #( connection_id = '001'
                            carrier_id    = 'AA' ).

      CATCH cx_abap_invalid_value INTO DATA(x).
        out->write( x->get_text( ) ).
    ENDTRY.

    APPEND connection TO connections.

    TRY.
        connection = NEW #( connection_id = '001'
                            carrier_id    = 'AA' ).

      CATCH cx_abap_invalid_value INTO x.
        out->write( x->get_text( ) ).
    ENDTRY.

    APPEND connection TO connections.

    LOOP AT connections INTO connection.
      out->write( connection->carrier_id ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
