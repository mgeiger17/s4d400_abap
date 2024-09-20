CLASS zlc_14_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlc_14_hello_world IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Ausgabe
    out->write( 'Hello World' ).
    out->write( 'Hello World' ).
  ENDMETHOD.
ENDCLASS.
