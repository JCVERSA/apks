package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class ge1 {
    private static final ConcurrentHashMap<he1, fe1> a = new ConcurrentHashMap<>();
    private static final j72 b = new j72();
    public static final int c = 0;

    public static fe1 a(int i, int i2, SSLSocketFactory sSLSocketFactory) throws NoSuchAlgorithmException, KeyStoreException {
        b.getClass();
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        SSLSocketFactory sSLSocketFactory2 = null;
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        y45.g(trustManagers);
        ArrayList arrayList = new ArrayList();
        for (TrustManager trustManager : trustManagers) {
            if (trustManager instanceof X509TrustManager) {
                arrayList.add(trustManager);
            }
        }
        X509TrustManager x509TrustManager = (X509TrustManager) defpackage.i81.q0(arrayList);
        if (sSLSocketFactory != null && x509TrustManager != null) {
            sSLSocketFactory2 = sSLSocketFactory;
        }
        he1 he1Var = new he1(i, i2, sSLSocketFactory2);
        ConcurrentHashMap<he1, fe1> concurrentHashMap = a;
        if (!concurrentHashMap.containsKey(he1Var)) {
            fe1.a aVar = new fe1.a();
            long j = i;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            fe1.a aVarA = aVar.a(j, timeUnit).b(i2, timeUnit).a();
            if (sSLSocketFactory != null && x509TrustManager != null) {
                aVarA = aVarA.a(sSLSocketFactory, x509TrustManager);
            }
            concurrentHashMap.put(he1Var, new fe1(aVarA));
        }
        fe1 fe1Var = concurrentHashMap.get(he1Var);
        if (fe1Var != null) {
            return fe1Var;
        }
        throw new IllegalArgumentException("Required value was null.");
    }
}
