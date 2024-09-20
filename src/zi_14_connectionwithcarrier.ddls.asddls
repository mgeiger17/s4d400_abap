@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DB-View für Carrier'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZI_14_ConnectionWithCarrier as select from /dmo/connection as con
association [1..1] to /dmo/carrier as _car on _car.carrier_id = con.carrier_id
association [0..*] to /dmo/flight as _flights on con.carrier_id = _flights.carrier_id
                                              and con.connection_id = _flights.connection_id
{
  key con.carrier_id    as CarrierId,
  key con.connection_id as ConnectionId,
  con.airport_from_id   as AirportFromId,
  con.airport_to_id     as AirportToId,
  _car,
  _flights
}
where _car.carrier_id = 'LH'
