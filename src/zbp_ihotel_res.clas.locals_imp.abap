CLASS lhc_ZIhotel_res DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZIhotel_res RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR ZIhotel_res RESULT result.

ENDCLASS.

CLASS lhc_ZIhotel_res IMPLEMENTATION.

  METHOD get_instance_authorizations.
   LOOP AT keys INTO DATA(ls_key).

    APPEND VALUE #(
      %tky    = ls_key-%tky
      %update = if_abap_behv=>auth-allowed
      %delete = if_abap_behv=>auth-allowed
    ) TO result.

  ENDLOOP.
  ENDMETHOD.

  METHOD get_global_authorizations.
    IF requested_authorizations-%create = if_abap_behv=>mk-on.
    result-%create = if_abap_behv=>auth-allowed.
  ENDIF.
  ENDMETHOD.

ENDCLASS.
