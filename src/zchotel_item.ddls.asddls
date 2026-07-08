@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection view item'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCHOTEL_ITEM as projection on ZIHOTEL_ITEM
{
    key Serviceid,
    Reservationid,
    Servicetype,
    Quantity,
    Currencycode,
     @Semantics.amount.currencyCode : 'currencycode'
    Amount,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _resid : redirected to parent ZCHOTEL_RES
}
