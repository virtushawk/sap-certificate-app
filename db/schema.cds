using {cuid,managed} from '@sap/cds/common';
namespace com.virtushawk.certificateApp;

entity Certificates   {
    key ID : Integer64;
    name : String(150);
    description : String(300);
    duration : Integer;
    price : Decimal;
    isActive : Boolean;
    tags : Composition of many {key tag : Association to Tags;};
}

entity Tags {
    key ID : Integer;
    name : String(150);
    certificates : Association to many Certificates.tags on certificates.tag = $self;
}