package com.yandex.mobile.ads.impl;

import androidx.annotation.ChecksSdkIntAtLeast;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import java.io.ByteArrayInputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.Lambda;

public final class l72 {
    private static final yi5 a = kotlin.b.a(a.b);
    public static final int b = 0;

    public static final class a extends Lambda implements c74 {
        public static final a b = new a();

        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            try {
                return CertificateFactory.getInstance("X.509");
            } catch (CertificateException unused) {
                return null;
            }
        }
    }

    @ChecksSdkIntAtLeast(api = 24)
    public static final boolean a() {
        return true;
    }

    public static final X509Certificate a(byte[] bArr) {
        y45.j(bArr, "certBytes");
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            CertificateFactory certificateFactory = (CertificateFactory) a.getValue();
            return (X509Certificate) (certificateFactory != null ? certificateFactory.generateCertificate(byteArrayInputStream) : null);
        } catch (CertificateException unused) {
            return null;
        }
    }

    public static final X509TrustManager a(KeyStore keyStore) {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            y45.g(trustManagers);
            ArrayList arrayList = new ArrayList();
            for (TrustManager trustManager : trustManagers) {
                if (trustManager instanceof X509TrustManager) {
                    arrayList.add(trustManager);
                }
            }
            return (X509TrustManager) defpackage.i81.q0(arrayList);
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }
}
