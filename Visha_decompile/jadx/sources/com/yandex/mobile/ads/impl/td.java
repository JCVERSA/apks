package com.yandex.mobile.ads.impl;

import android.os.Build;
import android.security.NetworkSecurityPolicy;
import defpackage.y45;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

public final class td extends rh1 {
    private static final boolean f;
    public static final int g = 0;
    private final ArrayList d;
    private final xp e;

    public static final class a implements k72 {
        private final X509TrustManager a;
        private final Method b;

        public a(X509TrustManager x509TrustManager, Method method) {
            y45.j(x509TrustManager, "trustManager");
            y45.j(method, "findByIssuerAndSignatureMethod");
            this.a = x509TrustManager;
            this.b = method;
        }

        @Override
        public final X509Certificate a(X509Certificate x509Certificate) {
            y45.j(x509Certificate, "cert");
            try {
                Object objInvoke = this.b.invoke(this.a, x509Certificate);
                y45.h(objInvoke, "null cannot be cast to non-null type java.security.cert.TrustAnchor");
                return ((TrustAnchor) objInvoke).getTrustedCert();
            } catch (IllegalAccessException e) {
                throw new AssertionError("unable to get issues and signature", e);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b);
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "CustomTrustRootIndex(trustManager=" + this.a + ", findByIssuerAndSignatureMethod=" + this.b + ")";
        }
    }

    static {
        f = rh1.a.b() && Build.VERSION.SDK_INT < 30;
    }

    public td() {
        int i = m22.h;
        m22 m22VarA = m22.a.a("com.android.org.conscrypt");
        int i2 = xd.g;
        List listP = defpackage.y71.p(m22VarA, new x00(xd.a.a()));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listP) {
            if (((l12) obj).a()) {
                arrayList.add(obj);
            }
        }
        this.d = arrayList;
        this.e = xp.a.a();
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
    public final k72 b(X509TrustManager x509TrustManager) {
        y45.j(x509TrustManager, "trustManager");
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            y45.g(declaredMethod);
            return new a(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    @Override
    public final void a(SSLSocket sSLSocket, String str, List<mm1> list) {
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
    public final void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        y45.j(socket, "socket");
        y45.j(inetSocketAddress, "address");
        socket.connect(inetSocketAddress, i);
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
    public final boolean a(String str) {
        y45.j(str, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }

    @Override
    public final Object b() {
        y45.j("response.body().close()", "closer");
        return this.e.a();
    }

    @Override
    public final void a(Object obj, String str) {
        y45.j(str, "message");
        if (this.e.a(obj)) {
            return;
        }
        rh1.a(5, str, (Throwable) null);
    }
}
