package com.mgtv.task.http;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Principal;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Date;
import java.util.Set;
import javax.net.ssl.X509TrustManager;

public class IgnoreExpirationTrustManager implements X509TrustManager {
    private final X509TrustManager a;

    public class EternalCertificate extends X509Certificate {
        private final X509Certificate originalCertificate;

        public EternalCertificate(X509Certificate x509Certificate) {
            this.originalCertificate = x509Certificate;
        }

        @Override
        public void checkValidity() throws CertificateNotYetValidException, CertificateExpiredException {
        }

        @Override
        public int getBasicConstraints() {
            return this.originalCertificate.getBasicConstraints();
        }

        @Override
        public Set<String> getCriticalExtensionOIDs() {
            return this.originalCertificate.getCriticalExtensionOIDs();
        }

        @Override
        public byte[] getEncoded() throws CertificateEncodingException {
            return this.originalCertificate.getEncoded();
        }

        @Override
        public byte[] getExtensionValue(String str) {
            return this.originalCertificate.getExtensionValue(str);
        }

        @Override
        public Principal getIssuerDN() {
            return this.originalCertificate.getIssuerDN();
        }

        @Override
        public boolean[] getIssuerUniqueID() {
            return this.originalCertificate.getIssuerUniqueID();
        }

        @Override
        public boolean[] getKeyUsage() {
            return this.originalCertificate.getKeyUsage();
        }

        @Override
        public Set<String> getNonCriticalExtensionOIDs() {
            return this.originalCertificate.getNonCriticalExtensionOIDs();
        }

        @Override
        public Date getNotAfter() {
            return this.originalCertificate.getNotAfter();
        }

        @Override
        public Date getNotBefore() {
            return this.originalCertificate.getNotBefore();
        }

        @Override
        public PublicKey getPublicKey() {
            return this.originalCertificate.getPublicKey();
        }

        @Override
        public BigInteger getSerialNumber() {
            return this.originalCertificate.getSerialNumber();
        }

        @Override
        public String getSigAlgName() {
            return this.originalCertificate.getSigAlgName();
        }

        @Override
        public String getSigAlgOID() {
            return this.originalCertificate.getSigAlgOID();
        }

        @Override
        public byte[] getSigAlgParams() {
            return this.originalCertificate.getSigAlgParams();
        }

        @Override
        public byte[] getSignature() {
            return this.originalCertificate.getSignature();
        }

        @Override
        public Principal getSubjectDN() {
            return this.originalCertificate.getSubjectDN();
        }

        @Override
        public boolean[] getSubjectUniqueID() {
            return this.originalCertificate.getSubjectUniqueID();
        }

        @Override
        public byte[] getTBSCertificate() throws CertificateEncodingException {
            return this.originalCertificate.getTBSCertificate();
        }

        @Override
        public int getVersion() {
            return this.originalCertificate.getVersion();
        }

        @Override
        public boolean hasUnsupportedCriticalExtension() {
            return this.originalCertificate.hasUnsupportedCriticalExtension();
        }

        @Override
        public String toString() {
            return this.originalCertificate.toString();
        }

        @Override
        public void verify(PublicKey publicKey) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
            this.originalCertificate.verify(publicKey);
        }

        @Override
        public void checkValidity(Date date) throws CertificateNotYetValidException, CertificateExpiredException {
        }

        @Override
        public void verify(PublicKey publicKey, String str) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException, CertificateException, NoSuchProviderException {
            this.originalCertificate.verify(publicKey, str);
        }
    }

    @Override
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        this.a.checkClientTrusted(x509CertificateArr, str);
    }

    @Override
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        X509Certificate[] x509CertificateArr2 = (X509Certificate[]) Arrays.copyOf(x509CertificateArr, x509CertificateArr.length);
        X509Certificate[] x509CertificateArr3 = new X509Certificate[x509CertificateArr2.length];
        for (int i = 0; i < x509CertificateArr2.length; i++) {
            x509CertificateArr3[i] = new EternalCertificate(x509CertificateArr2[i]);
        }
        this.a.checkServerTrusted(x509CertificateArr3, str);
    }

    @Override
    public X509Certificate[] getAcceptedIssuers() {
        return this.a.getAcceptedIssuers();
    }
}
