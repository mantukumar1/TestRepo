using {
    cuid,
    managed,
    temporal
} from '@sap/cds/common';


namespace my.object;

@a
entity ObjectData {
    key id                 : UUID            @odata.Type : 'Edm.String'  @Core.Computed;
        objectId           : String(200) not null ;
        rawObjectDataID    : String @Common     : {Label : '{i18n>rawObjectDataID}'}; // connection to Raw table 
        versionNumber      : String(20) default '1' not null @odata.Type : 'Edm.String'  @Common : {Label : '{i18n>VersionNumber}', };
        sourceSystem       : String(200) not null;
        objectStatus_ID    : String(2);
        controlElement_ID  : String(40);
        companyCode_ID     : String(20);
        businessPartner    : String(200);
        partnerCompanyCode : String(200);
        costCenter         : String(200);
        objectCategory_ID : String(2);
        profitCenter       : String(200);
        businessDate : Date not null;
        systemDateTime     : Date not null default $now;
        objectDataStatus_ID :  String(1);
        startDate          : Date not null;
        endDate            : Date not null;
        objectDirection_ID : String(2);
        processingStatus_ID : String(20);
        processedOn        : Timestamp;
}