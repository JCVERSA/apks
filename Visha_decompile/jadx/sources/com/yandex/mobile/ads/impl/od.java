package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.security.NetworkSecurityPolicy;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

public final class od extends rh1 {
    private static final boolean e = y45.e("Dalvik", System.getProperty("java.vm.name"));
    private final ArrayList d;

    public od() {
        pd pdVarA = pd.a.a();
        int i = xd.g;
        List listP = defpackage.y71.p(pdVarA, new x00(xd.a.a()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listP) {
            if (((l12) obj).a()) {
                arrayList.add(obj);
            }
        }
        this.d = arrayList;
    }

    @Override
    public final eo a(X509TrustManager x509TrustManager) {
        y45.j(x509TrustManager, "trustManager");
        qd qdVarA = qd.a.a(x509TrustManager);
        if (qdVarA != null) {
            return qdVarA;
        }
        y45.j(x509TrustManager, "trustManager");
        return new wk(b(x509TrustManager));
    }

    @Override
    public final String b(SSLSocket sSLSocket) {
        Object next;
        y45.j(sSLSocket, "sslSocket");
        Iterator it = this.d.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((l12) next).a(sSLSocket));
        l12 l12Var = (l12) next;
        if (l12Var != null) {
            return l12Var.b(sSLSocket);
        }
        return null;
    }

    @Override
    public final void a(SSLSocket sSLSocket, String str, List<? extends mm1> list) {
        Object next;
        y45.j(sSLSocket, "sslSocket");
        y45.j(list, "protocols");
        Iterator it = this.d.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((l12) next).a(sSLSocket));
        l12 l12Var = (l12) next;
        if (l12Var != null) {
            l12Var.a(sSLSocket, str, list);
        }
    }

    @Override
    @SuppressLint({"NewApi"})
    public final boolean a(String str) {
        y45.j(str, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }
}
