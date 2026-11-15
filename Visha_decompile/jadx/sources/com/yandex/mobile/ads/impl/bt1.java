package com.yandex.mobile.ads.impl;

import android.net.http.SslCertificate;
import android.os.Bundle;
import defpackage.y45;
import java.io.ByteArrayInputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

public final class bt1 {
    public static final X509Certificate a(SslCertificate sslCertificate, CertificateFactory certificateFactory) {
        byte[] byteArray;
        y45.j(sslCertificate, "<this>");
        y45.j(certificateFactory, "x509CertificateFactory");
        if (!y45.e(certificateFactory.getType(), "X.509")) {
            certificateFactory.getType();
            sp0.b(new Object[0]);
            return null;
        }
        Bundle bundleSaveState = SslCertificate.saveState(sslCertificate);
        if (bundleSaveState == null || (byteArray = bundleSaveState.getByteArray("x509-certificate")) == null) {
            return null;
        }
        try {
            Certificate certificateGenerateCertificate = certificateFactory.generateCertificate(new ByteArrayInputStream(byteArray));
            if (certificateGenerateCertificate instanceof X509Certificate) {
                return (X509Certificate) certificateGenerateCertificate;
            }
            return null;
        } catch (CertificateException unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }
}
