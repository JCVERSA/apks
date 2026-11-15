package com.yandex.mobile.ads.impl;

import defpackage.f1a;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

public final class rq0 extends rh1 {
    private static final boolean d;

    static {
        boolean z;
        String property = System.getProperty("java.specification.version");
        Integer numR = property != null ? f1a.r(property) : null;
        if (numR != null) {
            if (numR.intValue() < 9) {
                z = false;
            }
            d = z;
        }
        try {
            SSLSocket.class.getMethod("getApplicationProtocol", null);
        } catch (NoSuchMethodException unused) {
            z = false;
        }
        z = true;
        d = z;
    }

    @Override
    public final void a(SSLSocket sSLSocket, String str, List<mm1> list) {
        y45.j(sSLSocket, "sslSocket");
        y45.j(list, "protocols");
        SSLParameters sSLParameters = sSLSocket.getSSLParameters();
        y45.j(list, "protocols");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((mm1) obj) != mm1.d) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((mm1) it.next()).toString());
        }
        sSLParameters.setApplicationProtocols((String[]) arrayList2.toArray(new String[0]));
        sSLSocket.setSSLParameters(sSLParameters);
    }

    @Override
    public final String b(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        try {
            String applicationProtocol = sSLSocket.getApplicationProtocol();
            if (applicationProtocol == null || y45.e(applicationProtocol, "")) {
                return null;
            }
            return applicationProtocol;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
