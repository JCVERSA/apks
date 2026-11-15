package com.mbridge.msdk.thrid.okhttp.internal.platform;

import android.os.Build;
import android.util.Log;
import com.mbridge.msdk.thrid.okhttp.u;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

class b extends g {

    private final Class<?> f37388c;

    private final f<Socket> f37389d;

    private final f<Socket> f37390e;

    private final f<Socket> f37391f;

    private final f<Socket> f37392g;

    private final c f37393h = c.a();

    static final class a extends com.mbridge.msdk.thrid.okhttp.internal.tls.c {

        private final Object f37394a;

        private final Method f37395b;

        a(Object obj, Method method) {
            this.f37394a = obj;
            this.f37395b = method;
        }

        @Override
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f37395b.invoke(this.f37394a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e11.getMessage());
                sSLPeerUnverifiedException.initCause(e11);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return 0;
        }
    }

    static final class C0526b implements com.mbridge.msdk.thrid.okhttp.internal.tls.e {

        private final X509TrustManager f37396a;

        private final Method f37397b;

        C0526b(X509TrustManager x509TrustManager, Method method) {
            this.f37397b = method;
            this.f37396a = x509TrustManager;
        }

        @Override
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f37397b.invoke(this.f37396a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e10) {
                throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to get issues and signature", (Exception) e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0526b)) {
                return false;
            }
            C0526b c0526b = (C0526b) obj;
            return this.f37396a.equals(c0526b.f37396a) && this.f37397b.equals(c0526b.f37397b);
        }

        public int hashCode() {
            return this.f37396a.hashCode() + (this.f37397b.hashCode() * 31);
        }
    }

    b(Class<?> cls, f<Socket> fVar, f<Socket> fVar2, f<Socket> fVar3, f<Socket> fVar4) {
        this.f37388c = cls;
        this.f37389d = fVar;
        this.f37390e = fVar2;
        this.f37391f = fVar3;
        this.f37392g = fVar4;
    }

    public static g h() {
        Class<?> cls;
        f fVar;
        f fVar2;
        if (!g.f()) {
            return null;
        }
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            f fVar3 = new f(null, "setUseSessionTickets", Boolean.TYPE);
            f fVar4 = new f(null, "setHostname", String.class);
            if (j()) {
                fVar = new f(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                fVar2 = new f(null, "setAlpnProtocols", byte[].class);
            } else {
                fVar = null;
                fVar2 = null;
            }
            return new b(cls2, fVar3, fVar4, fVar, fVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    static int i() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (NoClassDefFoundError unused) {
            return 0;
        }
    }

    private static boolean j() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override
    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        try {
            socket.connect(inetSocketAddress, i10);
        } catch (AssertionError e10) {
            if (!com.mbridge.msdk.thrid.okhttp.internal.c.a(e10)) {
                throw e10;
            }
            throw new IOException(e10);
        } catch (ClassCastException e11) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e11;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e11);
            throw iOException;
        } catch (SecurityException e12) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e12);
            throw iOException2;
        }
    }

    @Override
    public String b(SSLSocket sSLSocket) {
        byte[] bArr;
        f<Socket> fVar = this.f37391f;
        if (fVar == null || !fVar.a(sSLSocket) || (bArr = (byte[]) this.f37391f.d(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, com.mbridge.msdk.thrid.okhttp.internal.c.f37078j);
    }

    @Override
    public SSLContext e() {
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No TLS provider", e10);
        }
    }

    static final class c {

        private final Method f37398a;

        private final Method f37399b;

        private final Method f37400c;

        c(Method method, Method method2, Method method3) {
            this.f37398a = method;
            this.f37399b = method2;
            this.f37400c = method3;
        }

        Object a(String str) {
            Method method = this.f37398a;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, null);
                    this.f37399b.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        boolean a(Object obj) {
            if (obj != null) {
                try {
                    this.f37400c.invoke(obj, null);
                    return true;
                } catch (Exception unused) {
                }
            }
            return false;
        }

        static c a() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", null);
                method2 = cls.getMethod(MRAIDPresenter.OPEN, String.class);
                method = cls.getMethod("warnIfOpen", null);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new c(method3, method2, method);
        }
    }

    @Override
    public boolean b(String str) {
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return b(str, cls, cls.getMethod("getInstance", null).invoke(null, null));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.b(str);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e11) {
            e = e11;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        } catch (InvocationTargetException e12) {
            e = e12;
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to determine cleartext support", e);
        }
    }

    private boolean b(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return a(str, cls, obj);
        }
    }

    @Override
    public void a(SSLSocket sSLSocket, String str, List<u> list) throws IOException {
        if (str != null) {
            this.f37389d.c(sSLSocket, Boolean.TRUE);
            this.f37390e.c(sSLSocket, str);
        }
        f<Socket> fVar = this.f37392g;
        if (fVar == null || !fVar.a(sSLSocket)) {
            return;
        }
        this.f37392g.d(sSLSocket, g.b(list));
    }

    @Override
    public com.mbridge.msdk.thrid.okhttp.internal.tls.e b(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C0526b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.b(x509TrustManager);
        }
    }

    @Override
    public void a(int i10, String str, Throwable th2) {
        int iMin;
        int i11 = i10 != 5 ? 3 : 5;
        if (th2 != null) {
            str = str + '\n' + Log.getStackTraceString(th2);
        }
        int length = str.length();
        int i12 = 0;
        while (i12 < length) {
            int iIndexOf = str.indexOf(10, i12);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i12 + 4000);
                Log.println(i11, "OkHttp", str.substring(i12, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i12 = iMin;
                }
            }
            i12 = iMin + 1;
        }
    }

    @Override
    public Object a(String str) {
        return this.f37393h.a(str);
    }

    @Override
    public void a(String str, Object obj) {
        if (this.f37393h.a(obj)) {
            return;
        }
        a(5, str, (Throwable) null);
    }

    private boolean a(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", null).invoke(obj, null)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.b(str);
        }
    }

    @Override
    public com.mbridge.msdk.thrid.okhttp.internal.tls.c a(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.a(x509TrustManager);
        }
    }
}
