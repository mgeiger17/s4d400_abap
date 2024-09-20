CLASS zcl_14_demo_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_03 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data word1 type string value 'Hello'.
    data word2 type string value 'World'.

    out->write( | { word1 } { word2 } | ).

  ENDMETHOD.
ENDCLASS.
