@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View für Trefferliste DA TAB und HI TAB'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
@Metadata.allowExtensions: true
define root view entity ZC_DAHITAB
provider contract transactional_query
 as projection on ZI_DAHITAB
{
  key Zobject,
  key Zobjectkey,
  key Zcounter,
  Zname1,
  Zname2,
  Zname3,
  Zname4,
  Zname5,
  Zstreet,
  ZpostCode,
  Zcity,
  Zcountry,
  Zbukrs,
  ZCreUser,
  ZCreDate,
  ZCreTime,
  ZChgUserSap,
  ZChgDateSap,
  ZChgTimeSap,
  ZChgDateExt,
  ZChgLdatExt,
  Zfund2,
  Zfund1,
  Zfund3,
  Zfund4,
  Ztreffer,
  CreatedBy,
  CreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAtDA,
  LastChangedAt,
  Zlstnam,
  Zprozent,
  Ztext,
  Zdetail1,
  Zdetail2,
  Zsonst,
  Zland,
  Zort,
  Zstrasse,
  LocalLastChangedAtHI
}
