*&---------------------------------------------------------------------*
*& Report ZDC_SMARTFORMS_01
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZDC_SMARTFORMS_01.

************************************************************************
* Program Name : ZSMARTFORM_INVOICE
* Description  : Smart Form output for customer invoices (based on SCARR)
* Developed by : Demet Çekiç
* Created on   : 13.06.2025
************************************************************************
* Text Elements (used in selection screen)
* TEXT-001: Invoice Selection
* TEXT-C01: Please enter one or more currency codes
* t_blank : (Blank line for visual spacing)
************************************************************************

DATA: gv_fm_name    TYPE RS38L_FNAM,
      gs_controls   TYPE SSFCTRLOP,
      gs_output_opt TYPE SSFCOMPOP.

DATA: gv_currcode TYPE SCARR-CURRCODE.
DATA: gt_scarr    TYPE TABLE OF SCARR.
DATA: p_status    TYPE char1.

SELECTION-SCREEN BEGIN OF BLOCK GR1 WITH FRAME TITLE TEXT-001 NO INTERVALS.
SELECTION-SCREEN COMMENT /1(54) TEXT-C01.
SELECT-OPTIONS: s_code FOR gv_currcode.
SELECTION-SCREEN COMMENT /2(10) t_blank.

PARAMETERS: r_active RADIOBUTTON GROUP grp1,
            r_passiv RADIOBUTTON GROUP grp1.
SELECTION-SCREEN END OF BLOCK GR1.

* Determine active/passive status
IF r_active = abap_true.
  p_status = 'A'.
ELSEIF r_passiv = abap_true.
  p_status = 'P'.
ENDIF.

*--------------------------------------------------------
START-OF-SELECTION.
*--------------------------------------------------------

* Select carriers by currency code
  SELECT * FROM scarr INTO TABLE gt_scarr
    WHERE currcode IN s_code.

* Set Smart Form options
  gs_controls-no_dialog = abap_true.
  gs_controls-preview   = abap_true.
  gs_output_opt-tddest  = 'LP01'.

* Get function module name of the Smart Form
  CALL FUNCTION 'SSF_FUNCTION_MODULE_NAME'
    EXPORTING
      formname           = 'ZDC_SF_002'
    IMPORTING
      fm_name            = gv_fm_name
    EXCEPTIONS
      no_form            = 1
      no_function_module = 2
      OTHERS             = 3.

  IF sy-subrc <> 0.
    MESSAGE TEXT-002 TYPE 'E'.
  ENDIF.

* Call the Smart Form
  CALL FUNCTION gv_fm_name
    EXPORTING
      control_parameters = gs_controls
      output_options     = gs_output_opt
      user_settings      = ''
      it_scarr           = gt_scarr
      iv_active          = p_status
    EXCEPTIONS
      formatting_error   = 1
      internal_error     = 2
      send_error         = 3
      user_canceled      = 4
      OTHERS             = 5.

  IF sy-subrc <> 0.
    MESSAGE TEXT-003 TYPE 'E'.
  ENDIF.
