@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view of res'
@Metadata.ignorePropagatedAnnotations: true
define  root view entity ZIhotel_res as select from zhotel_res
composition [0..*] of ZIHOTEL_ITEM  as _item 
{
    @EndUserText.label: 'Reservation ID'
    key reservationid as Reservationid,
    
    @EndUserText.label: 'Guest Name'
    guestname as Guestname,
    
    @EndUserText.label: 'Phone Number'
    phonenumber as Phonenumber,
    
     @EndUserText.label: 'Room Type'
    roomtype as Roomtype,
    
    @EndUserText.label: 'Status'
    status as Status,
    
     @EndUserText.label: 'Check In Date'
    checkindate as Checkindate,
    
    @EndUserText.label: 'Check Out Date'
    checkoutdate as Checkoutdate,
    
    @EndUserText.label: 'Currency'
    currencycode as Currencycode,
    
       @EndUserText.label: 'Total Amount'         
    @Semantics.amount.currencyCode : 'currencycode'
    totalamount as Totalamount,
    local_created_by as LocalCreatedBy,
    local_created_at as LocalCreatedAt,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    last_changed_at as LastChangedAt,
    _item 
}
