CLASS zcl_abapgit_user_exit DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_abapgit_exit.

ENDCLASS.



CLASS zcl_abapgit_user_exit IMPLEMENTATION.
  METHOD zif_abapgit_exit~allow_sap_objects.

  ENDMETHOD.

  METHOD zif_abapgit_exit~change_local_host.

  ENDMETHOD.

  METHOD zif_abapgit_exit~change_proxy_authentication.

  ENDMETHOD.

  METHOD zif_abapgit_exit~change_proxy_port.

  ENDMETHOD.

  METHOD zif_abapgit_exit~change_proxy_url.

  ENDMETHOD.

  METHOD zif_abapgit_exit~change_tadir.

  ENDMETHOD.

  METHOD zif_abapgit_exit~create_http_client.
    DATA(lv_host) = zcl_abapgit_url=>host( iv_url ).

    DATA(lv_destination) = COND rfcdest( WHEN lv_host CS 'gitlab' THEN |GITLAB|
                                         WHEN lv_host CS 'github' THEN |GITHUB|
                                         WHEN lv_host CS 'accenture' THEN |ACCENTURE| ).

    IF lv_destination IS INITIAL.
      RETURN.
    ENDIF.

    cl_http_client=>create_by_destination(
      EXPORTING
        destination              = lv_destination
      IMPORTING
        client                   = ri_client
      EXCEPTIONS
        argument_not_found       = 1
        destination_not_found    = 2
        destination_no_authority = 3
        plugin_not_active        = 4
        internal_error           = 5
        OTHERS                   = 6 ).

    IF sy-subrc <> 0.
      zcx_abapgit_exception=>raise_t100(  ).
    ENDIF.
  ENDMETHOD.

  METHOD zif_abapgit_exit~http_client.

  ENDMETHOD.

ENDCLASS.
