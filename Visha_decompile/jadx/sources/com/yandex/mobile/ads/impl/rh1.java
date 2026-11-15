package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okio.Buffer;

public class rh1 {
    private static volatile rh1 a;
    private static final Logger b;
    public static final int c = 0;

    public static final class a {
        private a() {
        }

        public static ArrayList a(List list) {
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
            return arrayList2;
        }

        public static byte[] b(List list) {
            y45.j(list, "protocols");
            Buffer buffer = new Buffer();
            for (String str : a(list)) {
                buffer.writeByte(str.length());
                buffer.writeUtf8(str);
            }
            return buffer.readByteArray();
        }

        public a(int i) {
            this();
        }

        public static boolean b() {
            return y45.e("Dalvik", System.getProperty("java.vm.name"));
        }

        public static rh1 a() {
            return rh1.a;
        }
    }

    static {
        rh1 rq0Var;
        rh1 rh1VarA;
        if (y45.e("Dalvik", System.getProperty("java.vm.name"))) {
            rd.a();
            rh1VarA = od.e ? new od() : null;
            if (rh1VarA == null) {
                rq0Var = td.f ? new td() : null;
                y45.g(rq0Var);
                rh1VarA = rq0Var;
            }
        } else {
            rq0Var = rq0.d ? new rq0() : null;
            if (rq0Var != null) {
                rh1VarA = rq0Var;
            } else {
                rh1VarA = qq0.b.a();
                if (rh1VarA == null) {
                    rh1VarA = new rh1();
                }
            }
        }
        a = rh1VarA;
        b = Logger.getLogger(fe1.class.getName());
    }

    public static SSLSocketFactory c(X509TrustManager x509TrustManager) {
        y45.j(x509TrustManager, "trustManager");
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            y45.i(sSLContext, "getInstance(...)");
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            y45.i(socketFactory, "getSocketFactory(...)");
            return socketFactory;
        } catch (GeneralSecurityException e) {
            throw new AssertionError("No System TLS: " + e, e);
        }
    }

    public void a(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
    }

    public k72 b(X509TrustManager x509TrustManager) {
        y45.j(x509TrustManager, "trustManager");
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        y45.i(acceptedIssuers, "getAcceptedIssuers(...)");
        return new yk((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public final String toString() {
        String simpleName = getClass().getSimpleName();
        y45.i(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public eo a(X509TrustManager x509TrustManager) {
        y45.j(x509TrustManager, "trustManager");
        return new wk(b(x509TrustManager));
    }

    public String b(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        return null;
    }

    public void a(SSLSocket sSLSocket, String str, List<mm1> list) {
        y45.j(sSLSocket, "sslSocket");
        y45.j(list, "protocols");
    }

    public Object b() {
        y45.j("response.body().close()", "closer");
        if (b.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    public void a(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        y45.j(socket, "socket");
        y45.j(inetSocketAddress, "address");
        socket.connect(inetSocketAddress, i);
    }

    public static X509TrustManager c() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        y45.g(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                y45.h(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                return (X509TrustManager) trustManager;
            }
        }
        String string = Arrays.toString(trustManagers);
        y45.i(string, "toString(...)");
        throw new IllegalStateException(("Unexpected default trust managers: " + string).toString());
    }

    public boolean a(String str) {
        y45.j(str, "hostname");
        return true;
    }

    public static void a(int i, String str, Throwable th) {
        y45.j(str, "message");
        b.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void a(Object obj, String str) {
        y45.j(str, "message");
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        a(5, str, (Throwable) obj);
    }
}
