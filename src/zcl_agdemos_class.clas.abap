CLASS zcl_agdemos_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_agdemos_class IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT FROM zagdemos_cust
           FIELDS *
           WHERE active = @abap_true
           INTO TABLE @DATA(customizings).

    IF sy-subrc = 0.
      out->write( |No Customizing found| ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
