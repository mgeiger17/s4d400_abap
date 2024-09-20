CLASS zlc_14_iterate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zlc_14_iterate IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA count TYPE i.

    count = 20.

    DATA numbers TYPE TABLE OF i.

    DO count TIMES.
      IF sy-index < 3.
        APPEND sy-index - 1 TO numbers.
      ELSE.
        DATA(res) = numbers[ sy-index - 1 ] + numbers[ sy-index - 2 ].
        APPEND res TO numbers.
      ENDIF.

    ENDDO.

    out->write( 'Hier kommt die Fibonacce Folge' ).
    LOOP AT numbers INTO DATA(number).
      out->write( | { sy-tabix WIDTH = 14 ALIGN = LEFT } : { number }| ).
    ENDLOOP.
    out->write( numbers ).
  ENDMETHOD.
ENDCLASS.
