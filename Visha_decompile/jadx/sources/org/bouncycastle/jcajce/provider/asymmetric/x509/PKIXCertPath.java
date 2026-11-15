package org.bouncycastle.jcajce.provider.asymmetric.x509;

import defpackage.a40;
import defpackage.aq1;
import defpackage.bq1;
import defpackage.dg1;
import defpackage.dj9;
import defpackage.f1;
import defpackage.g1;
import defpackage.h08;
import defpackage.i95;
import defpackage.j08;
import defpackage.p1;
import defpackage.s1;
import defpackage.x0;
import defpackage.y0;
import defpackage.yu7;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.NoSuchProviderException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.security.auth.x500.X500Principal;

public class PKIXCertPath extends CertPath {
    static final List certPathEncodings;
    private List certificates;
    private final i95 helper;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("PkiPath");
        arrayList.add("PEM");
        arrayList.add("PKCS7");
        certPathEncodings = Collections.unmodifiableList(arrayList);
    }

    public PKIXCertPath(InputStream inputStream, String str) throws CertificateException {
        super("X.509");
        a40 a40Var = new a40();
        this.helper = a40Var;
        try {
            if (!str.equalsIgnoreCase("PkiPath")) {
                if (!str.equalsIgnoreCase("PKCS7") && !str.equalsIgnoreCase("PEM")) {
                    throw new CertificateException("unsupported encoding: " + str);
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                this.certificates = new ArrayList();
                CertificateFactory certificateFactoryC = a40Var.c("X.509");
                while (true) {
                    Certificate certificateGenerateCertificate = certificateFactoryC.generateCertificate(bufferedInputStream);
                    if (certificateGenerateCertificate == null) {
                        break;
                    } else {
                        this.certificates.add(certificateGenerateCertificate);
                    }
                }
            } else {
                p1 p1VarD = new f1(inputStream).D();
                if (!(p1VarD instanceof s1)) {
                    throw new CertificateException("input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath");
                }
                Enumeration enumerationB = ((s1) p1VarD).B();
                this.certificates = new ArrayList();
                CertificateFactory certificateFactoryC2 = a40Var.c("X.509");
                while (enumerationB.hasMoreElements()) {
                    this.certificates.add(0, certificateFactoryC2.generateCertificate(new ByteArrayInputStream(((x0) enumerationB.nextElement()).j().l("DER"))));
                }
            }
            this.certificates = sortCerts(this.certificates);
        } catch (IOException e) {
            throw new CertificateException("IOException throw while decoding CertPath:\n" + e.toString());
        } catch (NoSuchProviderException e2) {
            throw new CertificateException("BouncyCastle provider not found while trying to get a CertificateFactory:\n" + e2.toString());
        }
    }

    private List sortCerts(List list) {
        if (list.size() < 2) {
            return list;
        }
        X500Principal issuerX500Principal = ((X509Certificate) list.get(0)).getIssuerX500Principal();
        for (int i = 1; i != list.size(); i++) {
            if (!issuerX500Principal.equals(((X509Certificate) list.get(i)).getSubjectX500Principal())) {
                ArrayList arrayList = new ArrayList(list.size());
                ArrayList arrayList2 = new ArrayList(list);
                for (int i2 = 0; i2 < list.size(); i2++) {
                    X509Certificate x509Certificate = (X509Certificate) list.get(i2);
                    X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
                    int i3 = 0;
                    while (true) {
                        if (i3 == list.size()) {
                            arrayList.add(x509Certificate);
                            list.remove(i2);
                            break;
                        }
                        if (((X509Certificate) list.get(i3)).getIssuerX500Principal().equals(subjectX500Principal)) {
                            break;
                        }
                        i3++;
                    }
                }
                if (arrayList.size() > 1) {
                    return arrayList2;
                }
                for (int i4 = 0; i4 != arrayList.size(); i4++) {
                    X500Principal issuerX500Principal2 = ((X509Certificate) arrayList.get(i4)).getIssuerX500Principal();
                    for (int i5 = 0; i5 < list.size(); i5++) {
                        X509Certificate x509Certificate2 = (X509Certificate) list.get(i5);
                        if (issuerX500Principal2.equals(x509Certificate2.getSubjectX500Principal())) {
                            arrayList.add(x509Certificate2);
                            list.remove(i5);
                            break;
                        }
                    }
                }
                return list.size() > 0 ? arrayList2 : arrayList;
            }
            issuerX500Principal = ((X509Certificate) list.get(i)).getIssuerX500Principal();
        }
        return list;
    }

    private p1 toASN1Object(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new f1(x509Certificate.getEncoded()).D();
        } catch (Exception e) {
            throw new CertificateEncodingException("Exception while encoding certificate: " + e.toString());
        }
    }

    private byte[] toDEREncoded(x0 x0Var) throws CertificateEncodingException {
        try {
            return x0Var.j().l("DER");
        } catch (IOException e) {
            throw new CertificateEncodingException("Exception thrown: " + e);
        }
    }

    @Override
    public List getCertificates() {
        return Collections.unmodifiableList(new ArrayList(this.certificates));
    }

    @Override
    public byte[] getEncoded() throws CertificateEncodingException {
        Iterator encodings = getEncodings();
        if (!encodings.hasNext()) {
            return null;
        }
        Object next = encodings.next();
        if (next instanceof String) {
            return getEncoded((String) next);
        }
        return null;
    }

    @Override
    public Iterator getEncodings() {
        return certPathEncodings.iterator();
    }

    public PKIXCertPath(List list) {
        super("X.509");
        this.helper = new a40();
        this.certificates = sortCerts(new ArrayList(list));
    }

    @Override
    public byte[] getEncoded(String str) throws CertificateEncodingException {
        if (str.equalsIgnoreCase("PkiPath")) {
            y0 y0Var = new y0();
            List list = this.certificates;
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                y0Var.a(toASN1Object((X509Certificate) listIterator.previous()));
            }
            return toDEREncoded(new aq1(y0Var));
        }
        int i = 0;
        if (str.equalsIgnoreCase("PKCS7")) {
            dg1 dg1Var = new dg1(yu7.F2, null);
            y0 y0Var2 = new y0();
            while (i != this.certificates.size()) {
                y0Var2.a(toASN1Object((X509Certificate) this.certificates.get(i)));
                i++;
            }
            return toDEREncoded(new dg1(yu7.H2, new dj9(new g1(1L), new bq1(), dg1Var, new bq1(y0Var2), null, new bq1())));
        }
        if (!str.equalsIgnoreCase("PEM")) {
            throw new CertificateEncodingException("unsupported encoding: " + str);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        j08 j08Var = new j08(new OutputStreamWriter(byteArrayOutputStream));
        while (i != this.certificates.size()) {
            try {
                j08Var.b(new h08("CERTIFICATE", ((X509Certificate) this.certificates.get(i)).getEncoded()));
                i++;
            } catch (Exception unused) {
                throw new CertificateEncodingException("can't encode certificate for PEM encoded path");
            }
        }
        j08Var.close();
        return byteArrayOutputStream.toByteArray();
    }
}
