using {com.virtushawk.certificateApp as my} from '../db/schema';

service CertificateService {
    entity Certificates as projection on my.Certificates;
    entity Tags as projection on my.Tags;
}


annotate CertificateService.Certificates with @(restrict: [
    {grant: 'READ', to: 'any'},
    {grant: 'WRITE', to: 'admin'}
]);

annotate CertificateService.Tags with @(restrict: [
    {grant: 'READ', to: 'admin'},
    {grant: 'WRITE', to: 'admin'}
]);


