CLASS zlc_14_branch DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZLC_14_BRANCH IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Declarations
**************************

    DATA number1 TYPE i.
    DATA number2 TYPE i.

    DATA result TYPE p LENGTH 8 DECIMALS 2.


* Input Values
**************************

    number1 = -8.
    number2 = 3.

* Calculation
**************************


    data op type c LENGTH 1.

    op = '%'.

    case op.
      when '/'.
        IF number2 <> 0.
          result = number1 / number2.
        ELSE.
          out->write( 'Durch 0 Teilen ist nur in der komplexen Mathematik erlaubt.' ).
        ENDIF.

      when '*'.
        result = number1 * number2.


      when '+'.
        result = number1 + number2.
      when '-'.
        result = number1 - number2.

        when '%'.
        result = number1 MOD number2.

     When OTHERS.
        out->write( 'Das ist keine gültige Rechenoperation in diesen Taschenrechner Modell' ).

      endcase.

    data(output) = |{ number1 } { op } { number2 } = { result }|.

* Output
**************************

    out->write( output ).

  ENDMETHOD.
ENDCLASS.
