CLASS zcl_14_demo_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_demo_01 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    "---
    " INITIALISATION
    "---
    " String, Character
    " Integer, Byte, Short, Long
    " Boolean ! existiert nicht in ABAB
    " Date, Time

    TYPES ty_first_name     TYPE string.                 " Bsp: "Mattis" ! ungern -> sehr nah an Datenbanken, in einer DB braucht man feste Anzahl an Characters

    TYPES ty_last_name      TYPE c LENGTH 20.            " Bsp: "Geiger" HIER ist eine feste Länge vorhanden

    TYPES ty_iuser          TYPE n LENGTH 6.             " Bsp: '054906'

    TYPES ty_birth_date     TYPE d.                      " (n mit der Länge 8) => 'YYYYMMDD' Bsp. '20050212'

    TYPES ty_birth_time     TYPE t.                      " (n mit der Länge 6) => 'HHmmss' Bsp: '043023'

    TYPES ty_timestamp      TYPE utclong.                " Zeitstempel timestamp

    " Ganze Zahlen

    TYPES ty_number         TYPE i.                      " Bsp. -476

    TYPES ty_salary_in_euro TYPE p LENGTH 16 DECIMALS 2. " länge: byte_anzahl Bsp. '54623.88'

    " 'boolscher Wahrheitswert'

    TYPES ty_error_flag     TYPE c LENGTH 1.             " Bsp. 'X' => true, '' => false

    "---
    " DEKLARATION
    "---

    DATA first_name TYPE ty_first_name.
    out->write( first_name ).

    DATA last_name  TYPE ty_last_name.

    first_name = 'Mattis'.
    last_name = 'Geiger'.



    CONSTANTS pi TYPE p LENGTH 2 DECIMALS 2 VALUE '3.14'.

    out->write( pi ).
  ENDMETHOD.
ENDCLASS.
