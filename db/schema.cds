using {cuid,managed} from '@sap/cds/common';
namespace com.virtushawk.certificateApp;

entity Certificates   {
    key ID : Integer64;
    name : String(150);
    description : String(300);
    duration : Integer;
    price : Decimal;
    isActive : Boolean;
    tags : Association to many Certificates_Tags on tags.certificate = $self;
}

entity Tags {
    key ID : Integer;
    name : String(150);
    certificates : Association to many Certificates_Tags on certificates.tag = $self;
}

entity Certificates_Tags {
    certificate : Association to Certificates;
    tag : Association to Tags;
}