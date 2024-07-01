@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View für Trefferliste, Join DA TAB und HI TAB'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define root view entity ZI_DAHITAB as select from /su01/sls_hi_tab as hi
  inner join /su01/sls_da_tab as da on hi.zobject = da.zobject and hi.zobjectkey = da.zobjectkey
{
  key da.zobject as Zobject,
  key da.zobjectkey as Zobjectkey,
  key hi.zcounter as Zcounter,
  da.zname_1 as Zname1,
  da.zname_2 as Zname2,
  da.zname_3 as Zname3,
  da.zname_4 as Zname4,
  da.zname_5 as Zname5,
  da.zstreet as Zstreet,
  da.zpost_code as ZpostCode,
  da.zcity as Zcity,
  da.zcountry as Zcountry,
  da.zbukrs as Zbukrs,
  da.z_cre_user as ZCreUser,
  da.z_cre_date as ZCreDate,
  da.z_cre_time as ZCreTime,
  da.z_chg_user_sap as ZChgUserSap,
  da.z_chg_date_sap as ZChgDateSap,
  da.z_chg_time_sap as ZChgTimeSap,
  da.z_chg_date_ext as ZChgDateExt,
  da.z_chg_ldat_ext as ZChgLdatExt,
  da.zfund_2 as Zfund2,
  da.zfund_1 as Zfund1,
  da.zfund_3 as Zfund3,
  da.zfund_4 as Zfund4,
  da.ztreffer as Ztreffer,
  da.created_by as CreatedBy,
  da.created_at as CreatedAt,
  da.local_last_changed_by as LocalLastChangedBy,
  da.local_last_changed_at as LocalLastChangedAtDA,
  da.last_changed_at as LastChangedAt,
  hi.zlstnam as Zlstnam,
  hi.zprozent as Zprozent,
  hi.ztext as Ztext,
  hi.zdetail1 as Zdetail1,
  hi.zdetail2 as Zdetail2,
  hi.zsonst as Zsonst,
  hi.zland as Zland,
  hi.zort as Zort,
  hi.zstrasse as Zstrasse,
  hi.local_last_changed_at as LocalLastChangedAtHI
}
