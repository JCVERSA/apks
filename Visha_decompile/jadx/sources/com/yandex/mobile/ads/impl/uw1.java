package com.yandex.mobile.ads.impl;

import android.util.Log;
import defpackage.c74;
import defpackage.y45;
import defpackage.yi5;
import defpackage.zfb;
import java.io.IOException;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.Lambda;

public final class uw1 {
    private final mv a;
    private final yi5 b;
    private KeyStore c;
    private X509TrustManager d;
    private final Object e;

    public static final class a extends Lambda implements c74 {
        public static final a b = new a();

        public a() {
            super(0);
        }

        @Override
        public final Object invoke() {
            X509TrustManager x509TrustManagerA = l72.a((KeyStore) null);
            if (x509TrustManagerA != null) {
                return x509TrustManagerA;
            }
            throw new IllegalArgumentException("Failed to create default TrustManager");
        }
    }

    public uw1(mv mvVar) {
        y45.j(mvVar, "customCertificatesProvider");
        this.a = mvVar;
        this.b = kotlin.b.a(a.b);
        this.e = new Object();
    }

    public final void a(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        ((X509TrustManager) this.b.getValue()).checkClientTrusted(x509CertificateArr, str);
    }

    public final void b(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        zfb zfbVar;
        try {
            ((X509TrustManager) this.b.getValue()).checkServerTrusted(x509CertificateArr, str);
        } catch (CertificateException e) {
            synchronized (this.e) {
                try {
                    a();
                    b();
                    X509TrustManager x509TrustManager = this.d;
                    if (x509TrustManager != null) {
                        x509TrustManager.checkServerTrusted(x509CertificateArr, str);
                        zfbVar = zfb.a;
                    } else {
                        zfbVar = null;
                    }
                    if (zfbVar != null) {
                        zfb zfbVar2 = zfb.a;
                    } else {
                        Log.w("SdkTrustManager", "Custom TrustManager is null");
                        throw e;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final X509Certificate[] c() {
        X509Certificate[] acceptedIssuers = ((X509TrustManager) this.b.getValue()).getAcceptedIssuers();
        y45.i(acceptedIssuers, "getAcceptedIssuers(...)");
        return acceptedIssuers;
    }

    private final void a() {
        KeyStore keyStore;
        b();
        b();
        if (this.c == null) {
            int i = l72.b;
            KeyStore keyStore2 = null;
            try {
                keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                try {
                    keyStore.load(null);
                } catch (IOException unused) {
                }
            } catch (GeneralSecurityException unused2) {
                keyStore = null;
            }
            if (keyStore == null) {
                Log.w("SdkTrustManager", "Custom KeyStore is null, failed to add certs");
            } else {
                byte[][] bArrA = this.a.a();
                ArrayList arrayList = new ArrayList();
                for (byte[] bArr : bArrA) {
                    X509Certificate x509CertificateA = l72.a(bArr);
                    if (x509CertificateA != null) {
                        arrayList.add(x509CertificateA);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    a(keyStore, (X509Certificate) it.next());
                }
                keyStore2 = keyStore;
            }
            this.c = keyStore2;
        }
        b();
        if (this.d == null) {
            b();
            if (this.c != null) {
                b();
                this.d = l72.a(this.c);
            }
        }
    }

    public final void b(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        zfb zfbVar;
        try {
            X509TrustManager x509TrustManager = (X509TrustManager) this.b.getValue();
            if (l72.a()) {
                ge.b(x509TrustManager, x509CertificateArr, str, socket);
            } else {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
            }
        } catch (CertificateException e) {
            synchronized (this.e) {
                try {
                    a();
                    b();
                    X509TrustManager x509TrustManager2 = this.d;
                    if (x509TrustManager2 != null) {
                        if (l72.a()) {
                            ge.b(x509TrustManager2, x509CertificateArr, str, socket);
                        } else {
                            x509TrustManager2.checkServerTrusted(x509CertificateArr, str);
                        }
                        zfbVar = zfb.a;
                    } else {
                        zfbVar = null;
                    }
                    if (zfbVar != null) {
                        zfb zfbVar2 = zfb.a;
                    } else {
                        Log.w("SdkTrustManager", "Custom TrustManager is null");
                        throw e;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private static void a(KeyStore keyStore, X509Certificate x509Certificate) {
        try {
            keyStore.setCertificateEntry("custom_cert_" + keyStore.size(), x509Certificate);
        } catch (KeyStoreException e) {
            Log.w("SdkTrustManager", "Failed to store certificate", e);
        }
    }

    public final void a(X509Certificate[] x509CertificateArr, String str, Socket socket) throws CertificateException {
        if (l72.a()) {
            ge.a((X509TrustManager) this.b.getValue(), x509CertificateArr, str, socket);
        } else {
            ((X509TrustManager) this.b.getValue()).checkClientTrusted(x509CertificateArr, str);
        }
    }

    public final void b(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        zfb zfbVar;
        try {
            X509TrustManager x509TrustManager = (X509TrustManager) this.b.getValue();
            if (l72.a()) {
                ge.b(x509TrustManager, x509CertificateArr, str, sSLEngine);
            } else {
                x509TrustManager.checkServerTrusted(x509CertificateArr, str);
            }
        } catch (CertificateException e) {
            synchronized (this.e) {
                try {
                    a();
                    b();
                    X509TrustManager x509TrustManager2 = this.d;
                    if (x509TrustManager2 != null) {
                        if (l72.a()) {
                            ge.b(x509TrustManager2, x509CertificateArr, str, sSLEngine);
                        } else {
                            x509TrustManager2.checkServerTrusted(x509CertificateArr, str);
                        }
                        zfbVar = zfb.a;
                    } else {
                        zfbVar = null;
                    }
                    if (zfbVar != null) {
                        zfb zfbVar2 = zfb.a;
                    } else {
                        Log.w("SdkTrustManager", "Custom TrustManager is null");
                        throw e;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void a(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) throws CertificateException {
        if (l72.a()) {
            ge.a((X509TrustManager) this.b.getValue(), x509CertificateArr, str, sSLEngine);
        } else {
            ((X509TrustManager) this.b.getValue()).checkClientTrusted(x509CertificateArr, str);
        }
    }

    private final void b() {
        if (!Thread.holdsLock(this.e)) {
            throw new IllegalStateException("Operation should be performed under lock");
        }
    }
}
