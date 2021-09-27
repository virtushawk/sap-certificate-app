using {com.virtushawk.certificateApp as my} from '../db/schema';

service CertificateService {
    entity Certificates as projection on my.Certificates;
    entity tags as projection on my.Tags;
    entity Certificates_Tags as projection on my.Certificates_Tags;
}

