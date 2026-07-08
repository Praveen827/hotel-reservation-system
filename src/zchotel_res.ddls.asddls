@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'projection res'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZCHOTEL_RES as projection on ZIhotel_res
{
    key Reservationid,
    Guestname,
    Phonenumber,
    Roomtype,
    Status,
    Checkindate,
    Checkoutdate,
    Currencycode, 
    @Semantics.amount.currencyCode : 'currencycode'
    Totalamount,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _item : redirected to composition child ZCHOTEL_ITEM
}
