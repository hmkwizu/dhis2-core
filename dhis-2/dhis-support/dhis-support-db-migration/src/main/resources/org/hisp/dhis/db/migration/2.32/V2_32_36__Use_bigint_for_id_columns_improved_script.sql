
alter table datavalueaudit
	alter column datavalueauditid type bigint,
	alter column dataelementid type bigint,
	alter column periodid type bigint,
	alter column organisationunitid type bigint,
	alter column categoryoptioncomboid type bigint,
	alter column attributeoptioncomboid type bigint;

alter table datavalue
      alter column dataelementid type bigint,
      alter column periodid type bigint,
      alter column sourceid type bigint,
      alter column categoryoptioncomboid type bigint,
      alter column attributeoptioncomboid type bigint;
      
alter table programstageinstance
	alter column programstageinstanceid type bigint,
	alter column programinstanceid type bigint,
	alter column programstageid type bigint,
	alter column attributeoptioncomboid type bigint,
	alter column organisationunitid type bigint;

alter table programstageinstancecomments
	alter column programstageinstanceid type bigint,
	alter column trackedentitycommentid type bigint;

alter table programstageinstance_messageconversation
	alter column programstageinstanceid type bigint,
	alter column messageconversationid type bigint;

alter table trackedentitydatavalueaudit
	alter column programstageinstanceid type bigint,
	alter column trackedentitydatavalueauditid type bigint,
	alter column dataelementid type bigint;

alter table programmessage
	alter column programstageinstanceid type bigint,
	alter column lastupdatedby type bigint,
	alter column organisationUnitId type bigint,
	alter column programinstanceid type bigint,
	alter column trackedentityinstanceid type bigint;

alter table programnotificationinstance
	alter column programstageinstanceid type bigint,
	alter column programnotificationinstanceid type bigint,
	alter column lastupdatedby type bigint,
	alter column programinstanceid type bigint,
	alter column programnotificationtemplateid type bigint;

alter table relationshipitem
	alter column programstageinstanceid type bigint,
	alter column relationshipid type bigint,
	alter column programinstanceid type bigint,
	alter column trackedentityinstanceid type bigint;

alter table trackedentityinstance
	alter column trackedentityinstanceid type bigint,
	alter column lastupdatedby type bigint,
	alter column organisationunitid type bigint,
	alter column trackedentitytypeid type bigint;

alter table trackedentityattributevalue
	alter column trackedentityinstanceid type bigint,
	alter column trackedentityattributeid type bigint;

alter table trackedentityattributevalueaudit
	alter column trackedentityattributeid type bigint,
	alter column trackedentityinstanceid type bigint;

alter table programinstance
	alter column trackedentityinstanceid type bigint,
	alter column programinstanceid type bigint,
	alter column programid type bigint,
	alter column organisationunitid type bigint;

alter table programownershiphistory
	alter column trackedentityinstanceid type bigint,
	alter column programid type bigint;

alter table programtempownershipaudit
	alter column trackedentityinstanceid type bigint,
	alter column programid type bigint;

alter table trackedentityinstanceaudit alter column trackedentityinstanceauditid type bigint;

alter table attribute
	alter column attributeid type bigint,
	alter column lastupdatedby type bigint,
	alter column optionsetid type bigint,
	alter column userid type bigint;

alter table attributeuseraccesses alter column attributeid type bigint;

alter table attributeusergroupaccesses alter column attributeid type bigint;

alter table attributevalue
	alter column attributevalueid type bigint,
	alter column attributeid type bigint;

alter table categories_categoryoptions
	alter column categoryid type bigint,
	alter column categoryoptionid type bigint;

alter table categoryattributevalues
	alter column categoryid type bigint,
	alter column attributevalueid type bigint;

alter table categorycombo
	alter column categorycomboid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table categorycombos_categories
	alter column categoryid type bigint,
	alter column categorycomboid type bigint;

alter table categorycombos_optioncombos
	alter column categoryoptioncomboid type bigint,
	alter column categorycomboid type bigint;

alter table categorycombouseraccesses alter column categorycomboid type bigint;

alter table categorycombousergroupaccesses alter column categorycomboid type bigint;

alter table categorydimension alter column categoryid type bigint;

alter table categorydimension_items alter column categoryoptionid type bigint;

alter table categoryoption_organisationunits
	alter column organisationunitid type bigint,
	alter column categoryoptionid type bigint;

alter table categoryoptioncombo
	alter column categoryoptioncomboid type bigint,
	alter column lastupdatedby type bigint;

alter table categoryoptioncomboattributevalues
	alter column categoryoptioncomboid type bigint,
	alter column attributevalueid type bigint;

alter table categoryoptioncombos_categoryoptions
	alter column categoryoptioncomboid type bigint,
	alter column categoryoptionid type bigint;

alter table categoryoptiongroup
	alter column categoryoptiongroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table categoryoptiongroupattributevalues
	alter column categoryoptiongroupid type bigint,
	alter column attributevalueid type bigint;

alter table categoryoptiongroupmembers
	alter column categoryoptiongroupid type bigint,
	alter column categoryoptionid type bigint;

alter table categoryoptiongroupset
	alter column categoryoptiongroupsetid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table categoryoptiongroupsetattributevalues	
	alter column categoryoptiongroupsetid type bigint,
	alter column attributevalueid type bigint;

alter table categoryoptiongroupsetdimension alter column categoryoptiongroupsetid type bigint;

alter table categoryoptiongroupsetdimension_items alter column categoryoptiongroupid type bigint;

alter table categoryoptiongroupsetmembers
	alter column categoryoptiongroupid type bigint,
	alter column categoryoptiongroupsetid type bigint;

alter table categoryoptiongroupsetuseraccesses alter column categoryoptiongroupsetid type bigint;

alter table categoryoptiongroupsetusergroupaccesses alter column categoryoptiongroupsetid type bigint;

alter table categoryoptiongroupuseraccesses alter column categoryoptiongroupid type bigint;

alter table categoryoptiongroupusergroupaccesses alter column categoryoptiongroupid type bigint;

alter table chart
	alter column chartid type bigint,
	alter column lastupdatedby type bigint,
	alter column legendsetid type bigint,
	alter column colorsetid type bigint,
	alter column userid type bigint;

alter table chart_categorydimensions alter column chartid type bigint;

alter table chart_categoryoptiongroupsetdimensions alter column chart type bigint;

alter table chart_datadimensionitems alter column chartid type bigint;

alter table chart_dataelementgroupsetdimensions alter column chartid type bigint;

alter table chart_filters alter column chartid type bigint;

alter table chart_itemorgunitgroups
	alter column chartid type bigint,
	alter column orgunitgroupid type bigint;

alter table chart_organisationunits
	alter column chartid type bigint,
	alter column organisationunitid type bigint;

alter table chart_orgunitgroupsetdimensions alter column chartid type bigint;

alter table chart_orgunitlevels alter column chartid type bigint;

alter table chart_periods
	alter column chartid type bigint,
	alter column periodid type bigint;

alter table chart_yearlyseries alter column chartid type bigint;

alter table chartuseraccesses alter column chartid type bigint;

alter table chartusergroupaccesses alter column chartid type bigint;

alter table color
	alter column colorid type bigint,
	alter column lastupdatedby type bigint;

alter table colorset
	alter column colorsetid type bigint,
	alter column lastupdatedby type bigint;

alter table colorset_colors
	alter column colorsetid type bigint,
	alter column colorid type bigint;

alter table completedatasetregistration
	alter column datasetid type bigint,
	alter column periodid type bigint,
	alter column sourceid type bigint,
	alter column attributeoptioncomboid type bigint;

alter table configuration
	alter column feedbackrecipientsid type bigint,
	alter column offlineorgunitlevelid type bigint,
	alter column infrastructuralindicatorsid type bigint,
	alter column infrastructuraldataelementsid type bigint,
	alter column selfregistrationrole type bigint,
	alter column selfRegistrationOrgUnit type bigint;

alter table constant
	alter column constantid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table constantattributevalues
	alter column constantid type bigint,
	alter column attributevalueid type bigint;

alter table constantuseraccesses alter column constantid type bigint;

alter table constantusergroupaccesses alter column constantid type bigint;

alter table dashboard
	alter column dashboardid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table dashboard_items
	alter column dashboardid type bigint,
	alter column dashboarditemid type bigint;

alter table dashboarditem
	alter column dashboarditemid type bigint,
	alter column lastupdatedby type bigint,
	alter column chartid type bigint,
	alter column eventchartid type bigint,
	alter column mapid type bigint,
	alter column reportTable type bigint,
	alter column eventReport type bigint;

alter table dashboarditem_reports
	alter column dashboarditemid type bigint,
	alter column reportid type bigint;

alter table dashboarditem_resources
	alter column dashboarditemid type bigint,
	alter column resourceid type bigint;

alter table dashboarditem_users
	alter column dashboarditemid type bigint,
	alter column userid type bigint;

alter table dashboarduseraccesses alter column dashboardid type bigint;

alter table dashboardusergroupaccesses alter column dashboardid type bigint;

alter table dataapproval
	alter column dataapprovallevelid type bigint,
	alter column workflowid type bigint,
	alter column periodid type bigint,
	alter column organisationunitid type bigint,
	alter column attributeoptioncomboid type bigint,
	alter column creator type bigint;

alter table dataapprovalaudit
	alter column levelid type bigint,
	alter column workflowid type bigint,
	alter column periodid type bigint,
	alter column organisationunitid type bigint,
	alter column attributeoptioncomboid type bigint,
	alter column creator type bigint;

alter table dataapprovallevel
	alter column dataapprovallevelid type bigint,
	alter column lastupdatedby type bigint,
	alter column categoryoptiongroupsetid type bigint,
	alter column userid type bigint;

alter table dataapprovalleveluseraccesses alter column dataapprovallevelid type bigint;

alter table dataapprovallevelusergroupaccesses alter column dataapprovallevelid type bigint;

alter table dataapprovalworkflow
	alter column workflowid type bigint,
	alter column lastupdatedby type bigint,
	alter column categorycomboid type bigint,
	alter column userid type bigint;

alter table dataapprovalworkflowlevels
	alter column workflowid type bigint,
	alter column dataapprovallevelid type bigint;

alter table dataapprovalworkflowuseraccesses alter column workflowid type bigint;

alter table dataapprovalworkflowusergroupaccesses alter column workflowid type bigint;

alter table datadimensionitem
	alter column indicatorid type bigint,
	alter column dataelementid type bigint,
	alter column dataelementoperand_dataelementid type bigint,
	alter column dataelementoperand_categoryoptioncomboid type bigint,
	alter column datasetid type bigint,
	alter column programindicatorid type bigint,
	alter column programdataelement_programid type bigint,
	alter column programdataelement_dataelementid type bigint,
	alter column programattribute_programid type bigint,
	alter column programattribute_attributeid type bigint;

alter table dataelement
	alter column dataelementid type bigint,
	alter column lastupdatedby type bigint,
	alter column categorycomboid type bigint,
	alter column optionsetid type bigint,
	alter column commentoptionsetid type bigint,
	alter column userid type bigint;

alter table dataelementaggregationlevels alter column dataelementid type bigint;

alter table dataelementattributevalues
	alter column dataelementid type bigint,
	alter column attributevalueid type bigint;

alter table dataelementcategory
	alter column categoryid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table dataelementcategoryoption
	alter column categoryoptionid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table dataelementcategoryoptionattributevalues
	alter column categoryoptionid type bigint,
	alter column attributevalueid type bigint;

alter table dataelementcategoryoptionuseraccesses alter column categoryoptionid type bigint;

alter table dataelementcategoryoptionusergroupaccesses alter column categoryoptionid type bigint;

alter table dataelementcategoryuseraccesses alter column categoryid type bigint;

alter table dataelementcategoryusergroupaccesses alter column categoryid type bigint;

alter table dataelementgroup
	alter column dataelementgroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table dataelementgroupattributevalues
	alter column dataelementgroupid type bigint,
	alter column attributevalueid type bigint;

alter table dataelementgroupmembers
	alter column dataelementid type bigint,
	alter column dataelementgroupid type bigint;

alter table dataelementgroupset
	alter column dataelementgroupsetid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table dataelementgroupsetattributevalues
	alter column dataelementgroupsetid type bigint,
	alter column attributevalueid type bigint;

alter table dataelementgroupsetdimension alter column dataelementgroupsetid type bigint;

alter table dataelementgroupsetdimension_items alter column dataelementgroupid type bigint;

alter table dataelementgroupsetmembers
	alter column dataelementgroupsetid type bigint,
	alter column dataelementgroupid type bigint;

alter table dataelementgroupsetuseraccesses alter column dataelementgroupsetid type bigint;

alter table dataelementgroupsetusergroupaccesses alter column dataelementgroupsetid type bigint;

alter table dataelementgroupuseraccesses alter column dataelementgroupid type bigint;

alter table dataelementgroupusergroupaccesses alter column dataelementgroupid type bigint;

alter table dataelementlegendsets
	alter column dataelementid type bigint,
	alter column legendsetid type bigint;

alter table dataelementoperand
	alter column dataelementoperandid type bigint,
	alter column dataelementid type bigint,
	alter column categoryoptioncomboid type bigint;

alter table dataelementuseraccesses alter column dataelementid type bigint;

alter table dataelementusergroupaccesses alter column dataelementid type bigint;

alter table dataentryform
	alter column dataentryformid type bigint,
	alter column lastupdatedby type bigint;

alter table datainputperiod
	alter column periodid type bigint,
	alter column datasetid type bigint;

alter table dataset
	alter column datasetid type bigint,
	alter column lastupdatedby type bigint,
	alter column categorycomboid type bigint,
	alter column workflowid type bigint,
	alter column userid type bigint,
	alter column dataEntryForm type bigint,
	alter column notificationRecipients type bigint;

alter table datasetattributevalues
	alter column datasetid type bigint,
	alter column attributevalueid type bigint;

alter table datasetelement
	alter column datasetid type bigint,
	alter column dataelementid type bigint,
	alter column categorycomboid type bigint;

alter table datasetindicators
	alter column indicatorid type bigint,
	alter column datasetid type bigint;

alter table datasetlegendsets
	alter column datasetid type bigint,
	alter column legendsetid type bigint;

alter table datasetnotification_datasets
	alter column datasetnotificationtemplateid type bigint,
	alter column datasetid type bigint;

alter table datasetnotificationtemplate
	alter column datasetnotificationtemplateid type bigint,
	alter column lastupdatedby type bigint,
	alter column usergroupid type bigint;

alter table datasetnotificationtemplate_deliverychannel alter column datasetnotificationtemplateid type bigint;

alter table datasetoperands
	alter column datasetid type bigint,
	alter column dataelementoperandid type bigint;

alter table datasetsource
	alter column sourceid type bigint,
	alter column datasetid type bigint;

alter table datasetuseraccesses alter column datasetid type bigint;

alter table datasetusergroupaccesses alter column datasetid type bigint;

alter table datastatistics
	alter column statisticsid type bigint,
	alter column lastupdatedby type bigint;

alter table deletedobject alter column deletedobjectid type bigint;

alter table document
	alter column documentid type bigint,
	alter column lastupdatedby type bigint,
	alter column fileresource type bigint,
	alter column userid type bigint;

alter table documentattributevalues
	alter column documentid type bigint,
	alter column attributevalueid type bigint;

alter table documentuseraccesses alter column documentid type bigint;

alter table documentusergroupaccesses alter column documentid type bigint;

alter table eventchart
	alter column eventchartid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column programstageid type bigint,
	alter column dataelementvaluedimensionid type bigint,
	alter column attributevaluedimensionid type bigint,
	alter column userid type bigint;

alter table eventchart_attributedimensions alter column eventchartid type bigint;

alter table eventchart_categorydimensions alter column eventchartid type bigint;

alter table eventchart_categoryoptiongroupsetdimensions alter column eventchartid type bigint;

alter table eventchart_columns alter column eventchartid type bigint;

alter table eventchart_dataelementdimensions alter column eventchartid type bigint;

alter table eventchart_filters alter column eventchartid type bigint;

alter table eventchart_itemorgunitgroups
	alter column eventchartid type bigint,
	alter column orgunitgroupid type bigint;

alter table eventchart_organisationunits
	alter column eventchartid type bigint,
	alter column organisationunitid type bigint;

alter table eventchart_orgunitgroupsetdimensions alter column eventchartid type bigint;

alter table eventchart_orgunitlevels alter column eventchartid type bigint;

alter table eventchart_periods
	alter column eventchartid type bigint,
	alter column periodid type bigint;

alter table eventchart_programindicatordimensions alter column eventchartid type bigint;

alter table eventchart_rows alter column eventchartid type bigint;

alter table eventchartuseraccesses alter column eventchartid type bigint;

alter table eventchartusergroupaccesses alter column eventchartid type bigint;

alter table eventreport
	alter column eventreportid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column programstageid type bigint,
	alter column dataelementvaluedimensionid type bigint,
	alter column attributevaluedimensionid type bigint,
	alter column userid type bigint;

alter table eventreport_attributedimensions alter column eventreportid type bigint;

alter table eventreport_categorydimensions alter column eventreportid type bigint;

alter table eventreport_categoryoptiongroupsetdimensions alter column eventreportid type bigint;

alter table eventreport_columns alter column eventreportid type bigint;

alter table eventreport_dataelementdimensions alter column eventreportid type bigint;

alter table eventreport_filters alter column eventreportid type bigint;

alter table eventreport_itemorgunitgroups
	alter column eventreportid type bigint,
	alter column orgunitgroupid type bigint;

alter table eventreport_organisationunits
	alter column eventreportid type bigint,
	alter column organisationunitid type bigint;

alter table eventreport_orgunitgroupsetdimensions alter column eventreportid type bigint;

alter table eventreport_orgunitlevels alter column eventreportid type bigint;

alter table eventreport_periods
	alter column eventreportid type bigint,
	alter column periodid type bigint;

alter table eventreport_programindicatordimensions alter column eventreportid type bigint;

alter table eventreport_rows alter column eventreportid type bigint;

alter table eventreportuseraccesses alter column eventreportid type bigint;

alter table eventreportusergroupaccesses alter column eventreportid type bigint;

alter table expression alter column expressionid type bigint;

alter table externalfileresource
	alter column externalfileresourceid type bigint,
	alter column lastupdatedby type bigint,
	alter column fileresourceid type bigint;

alter table externalmaplayer
	alter column externalmaplayerid type bigint,
	alter column lastupdatedby type bigint,
	alter column legendsetid type bigint,
	alter column userid type bigint;

alter table externalmaplayeruseraccesses alter column externalmaplayerid type bigint;

alter table externalmaplayerusergroupaccesses alter column externalmaplayerid type bigint;

alter table externalnotificationlogentry alter column externalnotificationlogentryid type bigint;

alter table fileresource
	alter column fileresourceid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table i18nlocale
	alter column i18nlocaleid type bigint,
	alter column lastupdatedby type bigint;

alter table incomingsms alter column userid type bigint;

alter table indicator
	alter column indicatorid type bigint,
	alter column lastupdatedby type bigint,
	alter column indicatortypeid type bigint,
	alter column userid type bigint;

alter table indicatorattributevalues
	alter column indicatorid type bigint,
	alter column attributevalueid type bigint;

alter table indicatorgroup
	alter column indicatorgroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table indicatorgroupattributevalues
	alter column indicatorgroupid type bigint,
	alter column attributevalueid type bigint;

alter table indicatorgroupmembers
	alter column indicatorid type bigint,
	alter column indicatorgroupid type bigint;

alter table indicatorgroupset
	alter column indicatorgroupsetid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table indicatorgroupsetmembers
	alter column indicatorgroupid type bigint,
	alter column indicatorgroupsetid type bigint;

alter table indicatorgroupsetuseraccesses alter column indicatorgroupsetid type bigint;

alter table indicatorgroupsetusergroupaccesses alter column indicatorgroupsetid type bigint;

alter table indicatorgroupuseraccesses alter column indicatorgroupid type bigint;

alter table indicatorgroupusergroupaccesses alter column indicatorgroupid type bigint;

alter table indicatorlegendsets
	alter column indicatorid type bigint,
	alter column legendsetid type bigint;

alter table indicatortype
	alter column indicatortypeid type bigint,
	alter column lastupdatedby type bigint;

alter table indicatoruseraccesses alter column indicatorid type bigint;

alter table indicatorusergroupaccesses alter column indicatorid type bigint;

alter table intepretation_likedby
	alter column interpretationid type bigint,
	alter column userid type bigint;

alter table interpretation
	alter column interpretationid type bigint,
	alter column reporttableid type bigint,
	alter column chartid type bigint,
	alter column mapid type bigint,
	alter column eventreportid type bigint,
	alter column eventchartid type bigint,
	alter column datasetid type bigint,
	alter column periodid type bigint,
	alter column organisationunitid type bigint,
	alter column userid type bigint;

alter table interpretation_comments
	alter column interpretationid type bigint,
	alter column interpretationcommentid type bigint;

alter table interpretationcomment
	alter column interpretationcommentid type bigint,
	alter column userid type bigint;

alter table interpretationuseraccesses alter column interpretationid type bigint;

alter table interpretationusergroupaccesses alter column interpretationid type bigint;

alter table jobconfiguration
	alter column jobconfigurationid type bigint,
	alter column lastupdatedby type bigint;

alter table keyjsonvalue
	alter column keyjsonvalueid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table keyjsonvalueuseraccesses alter column keyjsonvalueid type bigint;

alter table keyjsonvalueusergroupaccesses alter column keyjsonvalueid type bigint;

alter table legendsetattributevalues
	alter column legendsetid type bigint,
	alter column attributevalueid type bigint;

alter table legendsetuseraccesses alter column maplegendsetid type bigint;

alter table legendsetusergroupaccesses alter column maplegendsetid type bigint;

alter table lockexception
	alter column lockexceptionid type bigint,
	alter column organisationunitid type bigint,
	alter column periodid type bigint,
	alter column datasetid type bigint;

alter table map
	alter column mapid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table maplegend
	alter column maplegendid type bigint,
	alter column lastupdatedby type bigint,
	alter column maplegendsetid type bigint;

alter table maplegendset
	alter column maplegendsetid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table mapmapviews
	alter column mapid type bigint,
	alter column mapviewid type bigint;

alter table mapuseraccesses alter column mapid type bigint;

alter table mapusergroupaccesses alter column mapid type bigint;

alter table mapview
	alter column mapviewid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column programstageid type bigint,
	alter column trackedentitytypeid type bigint,
	alter column legendsetid type bigint,
	alter column orgunitgroupsetid type bigint;

alter table mapview_attributedimensions alter column mapviewid type bigint;

alter table mapview_columns alter column mapviewid type bigint;

alter table mapview_datadimensionitems alter column mapviewid type bigint;

alter table mapview_dataelementdimensions alter column mapviewid type bigint;

alter table mapview_itemorgunitgroups
	alter column mapviewid type bigint,
	alter column orgunitgroupid type bigint;

alter table mapview_organisationunits
	alter column mapviewid type bigint,
	alter column organisationunitid type bigint;

alter table mapview_orgunitlevels alter column mapviewid type bigint;

alter table mapview_periods
	alter column mapviewid type bigint,
	alter column periodid type bigint;

alter table message
	alter column messageid type bigint,
	alter column userid type bigint;

alter table messageattachments
	alter column messageid type bigint,
	alter column fileresourceid type bigint;

alter table messageconversation
	alter column messageconversationid type bigint,
	alter column user_assigned type bigint,
	alter column lastsenderid type bigint,
	alter column userid type bigint;

alter table messageconversation_messages
	alter column messageconversationid type bigint,
	alter column messageid type bigint;

alter table messageconversation_usermessages alter column messageconversationid type bigint;

alter table metadataversion
	alter column versionid type bigint,
	alter column lastupdatedby type bigint;

alter table minmaxdataelement
	alter column minmaxdataelementid type bigint,
	alter column sourceid type bigint,
	alter column dataelementid type bigint,
	alter column categoryoptioncomboid type bigint;

alter table oauth2client
	alter column oauth2clientid type bigint,
	alter column lastupdatedby type bigint;

alter table oauth2clientgranttypes alter column oauth2clientid type bigint;

alter table oauth2clientredirecturis alter column oauth2clientid type bigint;

alter table optionattributevalues
	alter column optionvalueid type bigint,
	alter column attributevalueid type bigint;

alter table optiongroup
	alter column optiongroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column optionsetid type bigint,
	alter column userid type bigint;

alter table optiongroupattributevalues
	alter column optiongroupid type bigint,
	alter column attributevalueid type bigint;

alter table optiongroupmembers
	alter column optiongroupid type bigint,
	alter column optionid type bigint;

alter table optiongroupset
	alter column optiongroupsetid type bigint,
	alter column lastupdatedby type bigint,
	alter column optionsetid type bigint,
	alter column userid type bigint;

alter table optiongroupsetmembers
	alter column optiongroupsetid type bigint,
	alter column optiongroupid type bigint;

alter table optiongroupsetuseraccesses alter column optiongroupsetid type bigint;

alter table optiongroupsetusergroupaccesses alter column optiongroupsetid type bigint;

alter table optiongroupuseraccesses alter column optiongroupid type bigint;

alter table optiongroupusergroupaccesses alter column optiongroupid type bigint;

alter table optionset
	alter column optionsetid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table optionsetattributevalues
	alter column optionsetid type bigint,
	alter column attributevalueid type bigint;

alter table optionsetuseraccesses alter column optionsetid type bigint;

alter table optionsetusergroupaccesses alter column optionsetid type bigint;

alter table optionvalue
	alter column optionvalueid type bigint,
	alter column optionsetid type bigint;

alter table organisationunit
	alter column organisationunitid type bigint,
	alter column lastupdatedby type bigint,
	alter column parentid type bigint,
	alter column userid type bigint;

alter table organisationunitattributevalues
	alter column organisationunitid type bigint,
	alter column attributevalueid type bigint;

alter table orgunitgroup
	alter column orgunitgroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table orgunitgroupattributevalues
	alter column orgunitgroupid type bigint,
	alter column attributevalueid type bigint;

alter table orgunitgroupmembers
	alter column organisationunitid type bigint,
	alter column orgunitgroupid type bigint;

alter table orgunitgroupset
	alter column orgunitgroupsetid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table orgunitgroupsetattributevalues
	alter column orgunitgroupsetid type bigint,
	alter column attributevalueid type bigint;

alter table orgunitgroupsetdimension alter column orgunitgroupsetid type bigint;

alter table orgunitgroupsetdimension_items alter column orgunitgroupid type bigint;

alter table orgunitgroupsetmembers
	alter column orgunitgroupsetid type bigint,
	alter column orgunitgroupid type bigint;

alter table orgunitgroupsetuseraccesses alter column orgunitgroupsetid type bigint;

alter table orgunitgroupsetusergroupaccesses alter column orgunitgroupsetid type bigint;

alter table orgunitgroupuseraccesses alter column orgunitgroupid type bigint;

alter table orgunitgroupusergroupaccesses alter column orgunitgroupid type bigint;

alter table orgunitlevel
	alter column orgunitlevelid type bigint,
	alter column lastupdatedby type bigint;

alter table outbound_sms alter column id type bigint;

alter table outbound_sms_recipients alter column outbound_sms_id type bigint;

alter table period alter column periodid type bigint;

alter table periodboundary
	alter column periodboundaryid type bigint,
	alter column lastupdatedby type bigint,
	alter column programindicatorid type bigint;

alter table predictor
	alter column predictorid type bigint,
	alter column lastupdatedby type bigint,
	alter column generatorexpressionid type bigint,
	alter column generatoroutput type bigint,
	alter column generatoroutputcombo type bigint,
	alter column skiptestexpressionid type bigint;

alter table predictorgroup
	alter column predictorgroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table predictorgroupmembers
	alter column predictorid type bigint,
	alter column predictorgroupid type bigint;

alter table predictorgroupuseraccesses alter column predictorgroupid type bigint;

alter table predictorgroupusergroupaccesses alter column predictorgroupid type bigint;

alter table predictororgunitlevels
	alter column predictorid type bigint,
	alter column orgunitlevelid type bigint;

alter table previouspasswords alter column userid type bigint;

alter table program
	alter column programid type bigint,
	alter column lastupdatedby type bigint,
	alter column relatedprogramid type bigint,
	alter column categorycomboid type bigint,
	alter column trackedentitytypeid type bigint,
	alter column dataentryformid type bigint,
	alter column userid type bigint;

alter table program_attribute_group
	alter column programtrackedentityattributegroupid type bigint,
	alter column lastupdatedby type bigint;

alter table program_attributes
	alter column programtrackedentityattributeid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column trackedentityattributeid type bigint;

alter table program_organisationunits
	alter column organisationunitid type bigint,
	alter column programid type bigint;

alter table program_userroles
	alter column programid type bigint,
	alter column userroleid type bigint;

alter table programattributevalues
	alter column programid type bigint,
	alter column attributevalueid type bigint;

alter table programexpression alter column programexpressionid type bigint;

alter table programindicator
	alter column programindicatorid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column userid type bigint;

alter table programindicatorattributevalues
	alter column programindicatorid type bigint,
	alter column attributevalueid type bigint;

alter table programindicatorgroup
	alter column programindicatorgroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table programindicatorgroupattributevalues
	alter column programindicatorgroupid type bigint,
	alter column attributevalueid type bigint;

alter table programindicatorgroupmembers
	alter column programindicatorid type bigint,
	alter column programindicatorgroupid type bigint;

alter table programindicatorgroupuseraccesses alter column programindicatorgroupid type bigint;

alter table programindicatorgroupusergroupaccesses alter column programindicatorgroupid type bigint;

alter table programindicatorlegendsets
	alter column programindicatorid type bigint,
	alter column legendsetid type bigint;

alter table programindicatoruseraccesses alter column programindicatorid type bigint;

alter table programindicatorusergroupaccesses alter column programindicatorid type bigint;


alter table programinstance_messageconversation
	alter column programinstanceid type bigint,
	alter column messageconversationid type bigint;

alter table programinstanceaudit alter column programinstanceid type bigint;

alter table programinstancecomments
	alter column programinstanceid type bigint,
	alter column trackedentitycommentid type bigint;

alter table programmessage alter column id type bigint;

alter table programmessage_deliverychannels alter column programmessagedeliverychannelsid type bigint;

alter table programmessage_emailAddresses alter column programmessageemailAddressid type bigint;

alter table programmessage_phonenumbers alter column programmessagephonenumberid type bigint;

alter table programnotificationtemplate
	alter column programnotificationtemplateid type bigint,
	alter column lastupdatedby type bigint,
	alter column usergroupid type bigint,
	alter column trackedentityattributeid type bigint,
	alter column dataelementid type bigint,
	alter column programstageid type bigint,
	alter column programid type bigint;

alter table programnotificationtemplate_deliverychannel alter column programnotificationtemplatedeliverychannelid type bigint;

alter table programrule
	alter column programruleid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column programstageid type bigint;

alter table programruleaction
	alter column programruleactionid type bigint,
	alter column lastupdatedby type bigint,
	alter column programruleid type bigint,
	alter column dataelementid type bigint,
	alter column trackedentityattributeid type bigint,
	alter column programindicatorid type bigint,
	alter column programstagesectionid type bigint,
	alter column programstageid type bigint,
	alter column optionid type bigint,
	alter column optiongroupid type bigint;

alter table programrulevariable
	alter column programrulevariableid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column trackedentityattributeid type bigint,
	alter column dataelementid type bigint,
	alter column programstageid type bigint;

alter table programsection
	alter column programsectionid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint;

alter table programsection_attributes
	alter column programsectionid type bigint,
	alter column trackedentityattributeid type bigint;

alter table programstage
	alter column programstageid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint,
	alter column dataentryformid type bigint,
	alter column userid type bigint;

alter table programstageattributevalues
	alter column programstageid type bigint,
	alter column attributevalueid type bigint;

alter table programstagedataelement
	alter column programstagedataelementid type bigint,
	alter column lastupdatedby type bigint,
	alter column programstageid type bigint,
	alter column dataelementid type bigint;

alter table programstagesection
	alter column programstagesectionid type bigint,
	alter column lastupdatedby type bigint,
	alter column programstageid type bigint;

alter table programstagesection_dataelements
	alter column programstagesectionid type bigint,
	alter column dataelementid type bigint;

alter table programstagesection_programindicators
	alter column programstagesectionid type bigint,
	alter column programindicatorid type bigint;

alter table programstageuseraccesses alter column programstageid type bigint;

alter table programstageusergroupaccesses alter column programid type bigint;

alter table programtrackedentityattributegroupmembers
	alter column programtrackedentityattributeid type bigint,
	alter column programtrackedentityattributegroupid type bigint;

alter table programuseraccesses alter column programid type bigint;

alter table programusergroupaccesses alter column programid type bigint;

alter table pushanalysis
	alter column pushanalysisid type bigint,
	alter column lastupdatedby type bigint,
	alter column dashboard type bigint;

alter table pushanalysisrecipientusergroups
	alter column usergroupid type bigint,
	alter column elt type bigint;

alter table relationship
	alter column relationshipid type bigint,
	alter column lastupdatedby type bigint,
	alter column relationshiptypeid type bigint;

alter table relationshipconstraint
	alter column trackedentitytypeid type bigint,
	alter column programid type bigint,
	alter column programstageid type bigint;

alter table relationshiptype
	alter column relationshiptypeid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table relationshiptypeuseraccesses alter column relationshiptypeid type bigint;

alter table relationshiptypeusergroupaccesses alter column relationshiptypeid type bigint;

alter table report
	alter column reportid type bigint,
	alter column lastupdatedby type bigint,
	alter column reporttableid type bigint,
	alter column userid type bigint;

alter table reporttable
	alter column reporttableid type bigint,
	alter column lastupdatedby type bigint,
	alter column legendsetid type bigint,
	alter column userid type bigint;

alter table reporttable_categorydimensions alter column reporttableid type bigint;

alter table reporttable_categoryoptiongroupsetdimensions alter column reporttableid type bigint;

alter table reporttable_columns alter column reporttableid type bigint;

alter table reporttable_datadimensionitems alter column reporttableid type bigint;

alter table reporttable_dataelementgroupsetdimensions alter column reporttableid type bigint;

alter table reporttable_filters alter column reporttableid type bigint;

alter table reporttable_itemorgunitgroups
	alter column reporttableid type bigint,
	alter column orgunitgroupid type bigint;

alter table reporttable_organisationunits
	alter column reporttableid type bigint,
	alter column organisationunitid type bigint;

alter table reporttable_orgunitgroupsetdimensions alter column reporttableid type bigint;

alter table reporttable_orgunitlevels alter column reporttableid type bigint;

alter table reporttable_periods
	alter column reporttableid type bigint,
	alter column periodid type bigint;

alter table reporttable_rows alter column reporttableid type bigint;

alter table reporttableuseraccesses alter column reporttableid type bigint;

alter table reporttableusergroupaccesses alter column reporttableid type bigint;

alter table reportuseraccesses alter column reportid type bigint;

alter table reportusergroupaccesses alter column reportid type bigint;

alter table section
	alter column sectionid type bigint,
	alter column lastupdatedby type bigint,
	alter column datasetid type bigint;

alter table sectionattributevalues
	alter column sectionid type bigint,
	alter column attributevalueid type bigint;

alter table sectiondataelements
	alter column sectionid type bigint,
	alter column dataelementid type bigint;

alter table sectiongreyedfields
	alter column sectionid type bigint,
	alter column dataelementoperandid type bigint;

alter table sectionindicators
	alter column sectionid type bigint,
	alter column indicatorid type bigint;

alter table smscodes
	alter column dataelementid type bigint,
	alter column trackedentityattributeid type bigint;

alter table smscommandcodes alter column id type bigint;

alter table smscommands
	alter column smscommandid type bigint,
	alter column datasetid type bigint,
	alter column usergroupid type bigint,
	alter column programid type bigint,
	alter column programstageid type bigint;

alter table smscommandspecialcharacters alter column smscommandid type bigint;

alter table sqlview
	alter column sqlviewid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table sqlviewattributevalues
	alter column sqlviewid type bigint,
	alter column attributevalueid type bigint;

alter table sqlviewuseraccesses alter column sqlviewid type bigint;

alter table sqlviewusergroupaccesses alter column sqlviewid type bigint;

alter table systemsetting alter column systemsettingid type bigint;

alter table tablehook
	alter column analyticstablehookid type bigint,
	alter column lastupdatedby type bigint;

alter table trackedentityattribute
	alter column trackedentityattributeid type bigint,
	alter column lastupdatedby type bigint,
	alter column optionsetid type bigint,
	alter column userid type bigint;

alter table trackedentityattributeattributevalues
	alter column trackedentityattributeid type bigint,
	alter column attributevalueid type bigint;

alter table trackedentityattributedimension
	alter column trackedentityattributeid type bigint,
	alter column legendsetid type bigint;

alter table trackedentityattributelegendsets
	alter column trackedentityattributeid type bigint,
	alter column legendsetid type bigint;

alter table trackedentityattributeuseraccesses alter column trackedentityattributeid type bigint;

alter table trackedentityattributeusergroupaccesses alter column trackedentityattributeid type bigint;

alter table trackedentitycomment
	alter column trackedentitycommentid type bigint,
	alter column lastupdatedby type bigint;

alter table trackedentitydataelementdimension
	alter column dataelementid type bigint,
	alter column legendsetid type bigint;

alter table trackedentityinstancefilter
	alter column trackedentityinstancefilterid type bigint,
	alter column lastupdatedby type bigint,
	alter column programid type bigint;

alter table trackedentityprogramindicatordimension
	alter column programindicatorid type bigint,
	alter column legendsetid type bigint;

alter table trackedentityprogramowner
	alter column trackedentityinstanceid type bigint,
	alter column programid type bigint,
	alter column organisationunitid type bigint;

alter table trackedentitytype
	alter column trackedentitytypeid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table trackedentitytypeattribute
	alter column trackedentitytypeattributeid type bigint,
	alter column lastupdatedby type bigint,
	alter column trackedentitytypeid type bigint,
	alter column trackedentityattributeid type bigint;

alter table trackedentitytypeattributevalues
	alter column trackedentitytypeid type bigint,
	alter column attributevalueid type bigint;

alter table trackedentitytypeuseraccesses alter column trackedentitytypeid type bigint;

alter table trackedentitytypeusergroupaccesses alter column trackedentitytypeid type bigint;

alter table useraccess alter column userid type bigint;

alter table userapps alter column userinfoid type bigint;

alter table userattributevalues
	alter column userinfoid type bigint,
	alter column attributevalueid type bigint;

alter table userdatavieworgunits
	alter column userinfoid type bigint,
	alter column organisationunitid type bigint;

alter table usergroup
	alter column usergroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table usergroupaccess alter column usergroupid type bigint;

alter table usergroupattributevalues
	alter column usergroupid type bigint,
	alter column attributevalueid type bigint;

alter table usergroupmanaged
	alter column managedbygroupid type bigint,
	alter column managedgroupid type bigint;

alter table usergroupuseraccesses alter column usergroupid type bigint;

alter table usergroupusergroupaccesses alter column usergroupid type bigint;

alter table userinfo
	alter column userinfoid type bigint,
	alter column avatar type bigint;

alter table userkeyjsonvalue
	alter column userkeyjsonvalueid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table usermembership
	alter column organisationunitid type bigint,
	alter column userinfoid type bigint;

alter table usermessage alter column userid type bigint;

alter table userrole
	alter column userroleid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table userroleauthorities alter column userroleid type bigint;

alter table userrolemembers
	alter column userroleid type bigint,
	alter column userid type bigint;

alter table userroleuseraccesses alter column userroleid type bigint;

alter table userroleusergroupaccesses alter column userroleid type bigint;

alter table users
	alter column userid type bigint,
	alter column lastupdatedby type bigint,
	alter column creatoruserid type bigint;

alter table users_catdimensionconstraints
	alter column userid type bigint,
	alter column dataelementcategoryid type bigint;

alter table users_cogsdimensionconstraints
	alter column userid type bigint,
	alter column categoryoptiongroupsetid type bigint;

alter table usersetting alter column userinfoid type bigint;

alter table userteisearchorgunits
	alter column userinfoid type bigint,
	alter column organisationunitid type bigint;

alter table validationnotificationtemplate
	alter column validationnotificationtemplateid type bigint,
	alter column lastupdatedby type bigint;

alter table ValidationNotificationTemplate_recipientUserGroups
	alter column validationnotificationtemplateid type bigint,
	alter column usergroupid type bigint;

alter table validationnotificationtemplatevalidationrules
	alter column validationnotificationtemplateid type bigint,
	alter column validationruleid type bigint;

alter table validationresult
	alter column validationresultid type bigint,
	alter column validationruleid type bigint,
	alter column periodid type bigint,
	alter column organisationunitid type bigint,
	alter column attributeoptioncomboid type bigint;

alter table validationrule
	alter column validationruleid type bigint,
	alter column lastupdatedby type bigint,
	alter column leftexpressionid type bigint,
	alter column rightexpressionid type bigint,
	alter column userid type bigint;

alter table validationruleattributevalues
	alter column validationruleid type bigint,
	alter column attributevalueid type bigint;

alter table validationrulegroup
	alter column validationrulegroupid type bigint,
	alter column lastupdatedby type bigint,
	alter column userid type bigint;

alter table validationrulegroupattributevalues
	alter column validationrulegroupid type bigint,
	alter column attributevalueid type bigint;

alter table validationrulegroupmembers
	alter column validationgroupid type bigint,
	alter column validationruleid type bigint;

alter table validationrulegroupuseraccesses alter column validationrulegroupid type bigint;

alter table validationrulegroupusergroupaccesses alter column validationrulegroupid type bigint;

alter table validationruleorganisationunitlevels alter column validationruleid type bigint;

alter table validationruleuseraccesses alter column validationruleid type bigint;

alter table validationruleusergroupaccesses alter column validationruleid type bigint;

alter table version alter column versionid type bigint;