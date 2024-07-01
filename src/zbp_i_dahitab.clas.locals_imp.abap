CLASS lhc_Dahitab DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Dahitab RESULT result.

    " METHODS create FOR MODIFY
      " IMPORTING entities FOR CREATE Dahitab.

    METHODS update FOR MODIFY

          IMPORTING entities FOR UPDATE Dahitab.

"
    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE Dahitab.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Dahitab RESULT result.

    METHODS read FOR READ
      IMPORTING keys FOR READ Dahitab RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK Dahitab.

    METHODS setKeinTreffer FOR MODIFY
      IMPORTING keys FOR ACTION Dahitab~setKeinTreffer RESULT result.

ENDCLASS.

CLASS lhc_Dahitab IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  " METHOD create.
  " ENDMETHOD.
"
  METHOD update.
  " Das Update in su01/sls_da_tab
  ENDMETHOD.
"
  METHOD delete.
  " Das Delete in su01/sls_hi_tab




*    " Löschen der angegebenen Einträge aus der Entität Student
*MODIFY ENTITIES OF zi_dahitab IN LOCAL MODE
*        ENTITY Dahitab
*        DELETE FROM VALUE #( FOR key IN keys ( %tky = key-%tky ) )
*        FAILED   failed
*          REPORTED reported
*          MAPPED mapped.
*
*
*
* READ ENTITIES OF zi_dahitab IN LOCAL MODE
*    ENTITY Dahitab
*    ALL FIELDS WITH CORRESPONDING #( keys )
*    RESULT DATA(studentdata).
*      result = VALUE #( FOR studentrec in studentdata
*      ( %tky = studentrec-%tky %param = studentrec )
*    ).
*
*
*
*

  ENDMETHOD.

  METHOD read.
  " Das Read in zi_dahitab
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.


*  METHOD setKeinTreffer.
*
*    MODIFY ENTITIES OF zi_dahitab IN LOCAL MODE
*    ENTITY Dahitab
*    UPDATE
*    FIELDS ( Ztreffer )
*    WITH VALUE #( FOR key in keys ( %tky = key-%tky Ztreffer = 0 ) )
*    FAILED failed
*    REPORTED reported.
*
**    READ ENTITIES OF zi_dahitab IN LOCAL MODE
**    ENTITY Dahitab
**    ALL FIELDS WITH CORRESPONDING #( keys )
**    RESULT DATA(tabdata).
**      result = VALUE #( FOR tabrec in tabdata
**      ( %tky = tabrec-%tky %param = tabrec )
**    ).
**
**    MODIFY ENTITIES OF zi_dahitab IN LOCAL MODE
**    ENTITY Dahitab
**    DELETE FROM VALUE #( FOR key IN keys ( %tky = key-%tky ) )
**    FAILED   failed
**      REPORTED reported
**      MAPPED mapped.
*
*
*  ENDMETHOD.


  METHOD setKeinTreffer.


    " Löschen der angegebenen Einträge aus der Entität Student
MODIFY ENTITIES OF zi_dahitab IN LOCAL MODE
        ENTITY Dahitab
        DELETE FROM VALUE #( FOR key IN keys ( %tky = key-%tky ) )
        FAILED   failed
          REPORTED reported
          MAPPED mapped.



    READ ENTITIES OF zi_dahitab IN LOCAL MODE
    ENTITY Dahitab
    ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(tabdata).
      result = VALUE #( FOR tabrec in tabdata
      ( %tky = tabrec-%tky %param = tabrec )
    ).




  ENDMETHOD.


ENDCLASS.

CLASS lsc_ZI_DAHITAB DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_DAHITAB IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
