@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'hotelitem cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZIHOTEL_ITEM as select from zhotel_item

association to parent  ZIhotel_res as _resid
 on $projection.Reservationid = _resid.Reservationid

{
    @EndUserText.label: 'Service ID'
    key serviceid as Serviceid,
    
     @EndUserText.label: 'Reservation ID'
    reservationid as Reservationid,
    
    @EndUserText.label: 'Service Type'
    servicetype as Servicetype,
    
    
@EndUserText.label: 'Quantity'
    quantity as Quantity,
    
@EndUserText.label: 'Currency'
    currencycode as Currencycode,
    
    @EndUserText.label: 'Amount'
     @Semantics.amount.currencyCode : 'currencycode'
    amount as Amount,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
    _resid
}
