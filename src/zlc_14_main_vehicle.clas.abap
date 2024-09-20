CLASS zlc_14_main_vehicle DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zlc_14_main_vehicle IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA vehicle  TYPE REF TO lcl_vehicle. " Vehicle vehicle;
    DATA vehicles TYPE TABLE OF REF TO lcl_vehicle.                       " List<Vehicle> vehicles = new

    vehicle = NEW #( ).  " vehicle = new Vehicle();

    vehicle->make         = 'Porsche'.
    vehicle->model        = '911'.
    vehicle->speed_in_kmh = 50.

    APPEND vehicle TO vehicles.

    "--------------------

    vehicle = NEW #( ). " Erstellung des Objektes

    vehicle->make         = 'Audi'.
    vehicle->model        = 'A4'.
    vehicle->speed_in_kmh = 40.

    APPEND vehicle TO vehicles.

    "--------------------

    vehicle = NEW #( ). " Erstellung des Objektes

    vehicle->make         = 'Audi'.
    vehicle->model        = 'A44'.
    vehicle->speed_in_kmh = 440.

    APPEND vehicle TO vehicles.

    "--------------------

    vehicle = NEW #( ). " Erstellung des Objektes

    vehicle->make         = 'Audi'.
    vehicle->model        = 'A6'.
    vehicle->speed_in_kmh = 430.

    APPEND vehicle TO vehicles.

    LOOP AT vehicles INTO vehicle.
      out->write( vehicle->to_string( ) ).
    ENDLOOP.

    vehicles[ 1 ]->accelerate( 49 ).
    vehicles[ 2 ]->brake( 49 ).
    vehicles[ 3 ]->brake( 400 ).

    out->write( vehicles ).
  ENDMETHOD.
ENDCLASS.
