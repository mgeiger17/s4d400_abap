CLASS zcl_14_demo_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_06 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " List<Integer> numbers = new ArrayList<>();

    " Deklaration einer 'Liste'
    DATA numbers TYPE TABLE OF i.

    " Einfügen von Datensätzen in  Tabelle

    numbers = VALUE #( ( 6 ) ( 8 ) ( 7 ) ).

    APPEND 42 TO numbers.
    APPEND -3 TO numbers.
    APPEND -3 TO numbers.
    APPEND -3 TO numbers.
    APPEND -3 TO numbers.

    DO 10 TIMES.
      TRY.
          out->write( numbers[ sy-index - 1 ] ).
        CATCH cx_sy_itab_line_not_found INTO FINAL(x).
          out->write( x->get_text( ) ).
      ENDTRY.

    ENDDO.

    IF line_exists( numbers[ lines( numbers ) ] ).

      out->write( 'Diese Zeile exitiert' ).
    ENDIF.
    out->write( |Länge der Liste: { lines( numbers ) }| ).
  ENDMETHOD.
ENDCLASS.
