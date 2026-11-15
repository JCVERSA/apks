package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.c74;
import defpackage.g1a;
import defpackage.y45;
import defpackage.z0a;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.jvm.internal.Lambda;
import okhttp3.internal.connection.RealConnection;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Timeout;
import org.apache.commons.text.StringSubstitutor;

public final class ao1 extends hh0.b {
    private final vs1 b;
    private Socket c;
    private Socket d;
    private if0 e;
    private mm1 f;
    private hh0 g;
    private BufferedSource h;
    private BufferedSink i;
    private boolean j;
    private boolean k;
    private int l;
    private int m;
    private int n;
    private int o;
    private final ArrayList p;
    private long q;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public static final class b extends Lambda implements c74 {
        final fo b;
        final if0 c;
        final ab d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(fo foVar, if0 if0Var, ab abVar) {
            super(0);
            this.b = foVar;
            this.c = if0Var;
            this.d = abVar;
        }

        @Override
        public final Object invoke() {
            eo eoVarA = this.b.a();
            y45.g(eoVarA);
            return eoVarA.a(this.d.k().g(), this.c.c());
        }
    }

    public static final class c extends Lambda implements c74 {
        public c() {
            super(0);
        }

        @Override
        public final Object invoke() {
            if0 if0Var = ao1.this.e;
            y45.g(if0Var);
            List<Certificate> listC = if0Var.c();
            ArrayList arrayList = new ArrayList(defpackage.z71.v(listC, 10));
            for (Certificate certificate : listC) {
                y45.h(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                arrayList.add((X509Certificate) certificate);
            }
            return arrayList;
        }
    }

    public ao1(co1 co1Var, vs1 vs1Var) {
        y45.j(co1Var, "connectionPool");
        y45.j(vs1Var, "route");
        this.b = vs1Var;
        this.o = 1;
        this.p = new ArrayList();
        this.q = Long.MAX_VALUE;
    }

    private final void n() throws IOException {
        Socket socket = this.d;
        y45.g(socket);
        BufferedSource bufferedSource = this.h;
        y45.g(bufferedSource);
        BufferedSink bufferedSink = this.i;
        y45.g(bufferedSink);
        socket.setSoTimeout(0);
        hh0 hh0Var = new hh0(new hh0.a(l42.h).a(socket, this.b.a().k().g(), bufferedSource, bufferedSink).a(this).j());
        this.g = hh0Var;
        this.o = hh0.C.c();
        hh0.l(hh0Var);
    }

    public final ArrayList b() {
        return this.p;
    }

    public final long c() {
        return this.q;
    }

    public final boolean d() {
        return this.j;
    }

    public final int e() {
        return this.l;
    }

    public final if0 f() {
        return this.e;
    }

    public final synchronized void g() {
        this.m++;
    }

    public final boolean h() {
        return this.g != null;
    }

    public final synchronized void i() {
        this.k = true;
    }

    public final synchronized void j() {
        this.j = true;
    }

    public final vs1 k() {
        return this.b;
    }

    public final void l() {
        this.j = true;
    }

    public final Socket m() {
        Socket socket = this.d;
        y45.g(socket);
        return socket;
    }

    public final String toString() {
        Object objA;
        String strG = this.b.a().k().g();
        int i = this.b.a().k().i();
        Proxy proxyB = this.b.b();
        InetSocketAddress inetSocketAddressD = this.b.d();
        if0 if0Var = this.e;
        if (if0Var == null || (objA = if0Var.a()) == null) {
            objA = "none";
        }
        return "Connection{" + strG + StringUtils.PROCESS_POSTFIX_DELIMITER + i + ", proxy=" + proxyB + " hostAddress=" + inetSocketAddressD + " cipherSuite=" + objA + " protocol=" + this.f + StringSubstitutor.DEFAULT_VAR_END;
    }

    public final void a() {
        Socket socket = this.c;
        if (socket != null) {
            g92.a(socket);
        }
    }

    public final void a(int i, int i2, int i3, boolean z, zn1 zn1Var, w50 w50Var) throws Throwable {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(w50Var, "eventListener");
        if (this.f == null) {
            List<rr> listB = this.b.a().b();
            sr srVar = new sr(listB);
            if (this.b.a().j() == null) {
                if (listB.contains(rr.f)) {
                    String strG = this.b.a().k().g();
                    int i4 = rh1.c;
                    if (!rh1.a.a().a(strG)) {
                        throw new xs1(new UnknownServiceException("CLEARTEXT communication to " + strG + " not permitted by network security policy"));
                    }
                } else {
                    throw new xs1(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
                }
            } else if (this.b.a().e().contains(mm1.h)) {
                throw new xs1(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
            }
            xs1 xs1Var = null;
            while (true) {
                try {
                    if (this.b.c()) {
                        a(i, i2, i3, zn1Var, w50Var);
                        if (this.c != null) {
                            break;
                        } else {
                            break;
                        }
                    }
                    a(i, i2, zn1Var, w50Var);
                    a(srVar, zn1Var, w50Var);
                    InetSocketAddress inetSocketAddressD = this.b.d();
                    Proxy proxyB = this.b.b();
                    w50Var.getClass();
                    w50.a(zn1Var, inetSocketAddressD, proxyB);
                    break;
                } catch (IOException e) {
                    Socket socket = this.d;
                    if (socket != null) {
                        g92.a(socket);
                    }
                    Socket socket2 = this.c;
                    if (socket2 != null) {
                        g92.a(socket2);
                    }
                    this.d = null;
                    this.c = null;
                    this.h = null;
                    this.i = null;
                    this.e = null;
                    this.f = null;
                    this.g = null;
                    this.o = 1;
                    InetSocketAddress inetSocketAddressD2 = this.b.d();
                    Proxy proxyB2 = this.b.b();
                    w50Var.getClass();
                    w50.a(zn1Var, inetSocketAddressD2, proxyB2, e);
                    if (xs1Var == null) {
                        xs1Var = new xs1(e);
                    } else {
                        xs1Var.a(e);
                    }
                    if (z) {
                        if (!srVar.a(e)) {
                            throw xs1Var;
                        }
                    } else {
                        throw xs1Var;
                    }
                }
            }
            if (this.b.c() && this.c == null) {
                throw new xs1(new ProtocolException("Too many tunnel connections attempted: 21"));
            }
            this.q = System.nanoTime();
            return;
        }
        throw new IllegalStateException("already connected");
    }

    private final void a(int i, int i2, zn1 zn1Var, w50 w50Var) throws IOException {
        Socket socketCreateSocket;
        Proxy proxyB = this.b.b();
        ab abVarA = this.b.a();
        Proxy.Type type = proxyB.type();
        int i3 = type == null ? -1 : a.a[type.ordinal()];
        if (i3 != 1 && i3 != 2) {
            socketCreateSocket = new Socket(proxyB);
        } else {
            socketCreateSocket = abVarA.i().createSocket();
            y45.g(socketCreateSocket);
        }
        this.c = socketCreateSocket;
        InetSocketAddress inetSocketAddressD = this.b.d();
        w50Var.getClass();
        w50.b(zn1Var, inetSocketAddressD, proxyB);
        socketCreateSocket.setSoTimeout(i2);
        try {
            int i4 = rh1.c;
            rh1.a.a().a(socketCreateSocket, this.b.d(), i);
            try {
                this.h = Okio.buffer(Okio.source(socketCreateSocket));
                this.i = Okio.buffer(Okio.sink(socketCreateSocket));
            } catch (NullPointerException e) {
                if (y45.e(e.getMessage(), "throw with null exception")) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.b.d());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    private final void a(sr srVar) throws Throwable {
        mm1 mm1VarA;
        ab abVarA = this.b.a();
        SSLSocketFactory sSLSocketFactoryJ = abVarA.j();
        SSLSocket sSLSocket = null;
        String strB = null;
        try {
            y45.g(sSLSocketFactoryJ);
            Socket socketCreateSocket = sSLSocketFactoryJ.createSocket(this.c, abVarA.k().g(), abVarA.k().i(), true);
            y45.h(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
            SSLSocket sSLSocket2 = (SSLSocket) socketCreateSocket;
            try {
                rr rrVarA = srVar.a(sSLSocket2);
                if (rrVarA.b()) {
                    int i = rh1.c;
                    rh1.a.a().a(sSLSocket2, abVarA.k().g(), abVarA.e());
                }
                sSLSocket2.startHandshake();
                SSLSession session = sSLSocket2.getSession();
                y45.g(session);
                if0 if0VarA = if0.a.a(session);
                HostnameVerifier hostnameVerifierD = abVarA.d();
                y45.g(hostnameVerifierD);
                if (!hostnameVerifierD.verify(abVarA.k().g(), session)) {
                    List<Certificate> listC = if0VarA.c();
                    if (!listC.isEmpty()) {
                        Certificate certificate = listC.get(0);
                        y45.h(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                        X509Certificate x509Certificate = (X509Certificate) certificate;
                        String strG = abVarA.k().g();
                        fo foVar = fo.c;
                        throw new SSLPeerUnverifiedException(z0a.l("\n              |Hostname " + strG + " not verified:\n              |    certificate: " + fo.b.a(x509Certificate) + "\n              |    DN: " + x509Certificate.getSubjectDN().getName() + "\n              |    subjectAltNames: " + ee1.a(x509Certificate) + "\n              ", null, 1, null));
                    }
                    throw new SSLPeerUnverifiedException("Hostname " + abVarA.k().g() + " not verified (no certificates)");
                }
                fo foVarA = abVarA.a();
                y45.g(foVarA);
                this.e = new if0(if0VarA.d(), if0VarA.a(), if0VarA.b(), new b(foVarA, if0VarA, abVarA));
                foVarA.a(abVarA.k().g(), new c());
                if (rrVarA.b()) {
                    int i2 = rh1.c;
                    strB = rh1.a.a().b(sSLSocket2);
                }
                this.d = sSLSocket2;
                this.h = Okio.buffer(Okio.source(sSLSocket2));
                this.i = Okio.buffer(Okio.sink(sSLSocket2));
                if (strB != null) {
                    mm1.c.getClass();
                    mm1VarA = mm1.a.a(strB);
                } else {
                    mm1VarA = mm1.e;
                }
                this.f = mm1VarA;
                int i3 = rh1.c;
                rh1.a.a().a(sSLSocket2);
            } catch (Throwable th) {
                th = th;
                sSLSocket = sSLSocket2;
                if (sSLSocket != null) {
                    int i4 = rh1.c;
                    rh1.a.a().a(sSLSocket);
                }
                if (sSLSocket != null) {
                    g92.a((Socket) sSLSocket);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private final void a(int i, int i2, int i3, zn1 zn1Var, w50 w50Var) throws IOException {
        vp1 vp1VarA = new vp1.a().a(this.b.a().k()).a("CONNECT", (yp1) null).b("Host", g92.a(this.b.a().k(), true)).b("Proxy-Connection", "Keep-Alive").b("User-Agent", "okhttp/4.9.3").a();
        vp1 vp1VarA2 = this.b.a().g().a(this.b, new vq1.a().a(vp1VarA).a(mm1.e).a(407).a("Preemptive Authenticate").a(g92.c).b(-1L).a(-1L).c().a());
        if (vp1VarA2 != null) {
            vp1VarA = vp1VarA2;
        }
        gi0 gi0VarG = vp1VarA.g();
        for (int i4 = 0; i4 < 21; i4++) {
            a(i, i2, zn1Var, w50Var);
            vp1VarA = a(i2, i3, vp1VarA, gi0VarG);
            if (vp1VarA == null) {
                return;
            }
            Socket socket = this.c;
            if (socket != null) {
                g92.a(socket);
            }
            this.c = null;
            this.i = null;
            this.h = null;
            InetSocketAddress inetSocketAddressD = this.b.d();
            Proxy proxyB = this.b.b();
            y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
            y45.j(inetSocketAddressD, "inetSocketAddress");
            y45.j(proxyB, "proxy");
        }
    }

    private final vp1 a(int i, int i2, vp1 vp1Var, gi0 gi0Var) throws IOException {
        String str = "CONNECT " + g92.a(gi0Var, true) + " HTTP/1.1";
        while (true) {
            BufferedSource bufferedSource = this.h;
            y45.g(bufferedSource);
            BufferedSink bufferedSink = this.i;
            y45.g(bufferedSink);
            fh0 fh0Var = new fh0(null, this, bufferedSource, bufferedSink);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            bufferedSource.getTimeout().timeout(i, timeUnit);
            bufferedSink.getTimeout().timeout(i2, timeUnit);
            fh0Var.a(vp1Var.d(), str);
            fh0Var.a();
            vq1.a aVarA = fh0Var.a(false);
            y45.g(aVarA);
            vq1 vq1VarA = aVarA.a(vp1Var).a();
            fh0Var.c(vq1VarA);
            int iD = vq1VarA.d();
            if (iD == 200) {
                if (bufferedSource.getBuffer().exhausted() && bufferedSink.getBuffer().exhausted()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iD == 407) {
                vp1 vp1VarA = this.b.a().g().a(this.b, vq1VarA);
                if (vp1VarA != null) {
                    if (g1a.E(HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, vq1.a(vq1VarA, "Connection"), true)) {
                        return vp1VarA;
                    }
                    vp1Var = vp1VarA;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + vq1VarA.d());
            }
        }
    }

    private final void a(sr srVar, zn1 zn1Var, w50 w50Var) throws Throwable {
        if (this.b.a().j() == null) {
            List<mm1> listE = this.b.a().e();
            mm1 mm1Var = mm1.h;
            if (listE.contains(mm1Var)) {
                this.d = this.c;
                this.f = mm1Var;
                n();
                return;
            } else {
                this.d = this.c;
                this.f = mm1.e;
                return;
            }
        }
        w50Var.getClass();
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        a(srVar);
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        if (this.f == mm1.g) {
            n();
        }
    }

    public final boolean a(ab abVar, List<vs1> list) {
        y45.j(abVar, "address");
        if (g92.f && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        if (this.p.size() >= this.o || this.j || !this.b.a().a(abVar)) {
            return false;
        }
        if (y45.e(abVar.k().g(), this.b.a().k().g())) {
            return true;
        }
        if (this.g != null && list != null && !list.isEmpty()) {
            for (vs1 vs1Var : list) {
                Proxy.Type type = vs1Var.b().type();
                Proxy.Type type2 = Proxy.Type.DIRECT;
                if (type == type2 && this.b.b().type() == type2 && y45.e(this.b.d(), vs1Var.d())) {
                    if (abVar.d() != ee1.a || !a(abVar.k())) {
                        return false;
                    }
                    try {
                        fo foVarA = abVar.a();
                        y45.g(foVarA);
                        String strG = abVar.k().g();
                        if0 if0Var = this.e;
                        y45.g(if0Var);
                        foVarA.a(strG, if0Var.c());
                        return true;
                    } catch (SSLPeerUnverifiedException unused) {
                        break;
                    }
                }
            }
        }
        return false;
    }

    public final c60 a(fe1 fe1Var, do1 do1Var) throws SocketException {
        y45.j(fe1Var, "client");
        y45.j(do1Var, "chain");
        Socket socket = this.d;
        y45.g(socket);
        BufferedSource bufferedSource = this.h;
        y45.g(bufferedSource);
        BufferedSink bufferedSink = this.i;
        y45.g(bufferedSink);
        hh0 hh0Var = this.g;
        if (hh0Var != null) {
            return new mh0(fe1Var, this, do1Var, hh0Var);
        }
        socket.setSoTimeout(do1Var.h());
        Timeout timeout = bufferedSource.getTimeout();
        long jE = do1Var.e();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeout.timeout(jE, timeUnit);
        bufferedSink.getTimeout().timeout(do1Var.g(), timeUnit);
        return new fh0(fe1Var, this, bufferedSource, bufferedSink);
    }

    @Override
    public final synchronized void a(hh0 hh0Var, zx1 zx1Var) {
        y45.j(hh0Var, "connection");
        y45.j(zx1Var, "settings");
        this.o = zx1Var.c();
    }

    @Override
    public final void a(oh0 oh0Var) throws IOException {
        y45.j(oh0Var, "stream");
        oh0Var.a(t50.h, (IOException) null);
    }

    public final void a(long j) {
        this.q = j;
    }

    public final synchronized void a(zn1 zn1Var, IOException iOException) {
        try {
            y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
            if (iOException instanceof z22) {
                t50 t50Var = ((z22) iOException).b;
                if (t50Var == t50.h) {
                    int i = this.n + 1;
                    this.n = i;
                    if (i > 1) {
                        this.j = true;
                        this.l++;
                    }
                } else if (t50Var != t50.i || !zn1Var.j()) {
                    this.j = true;
                    this.l++;
                }
            } else if (!h() || (iOException instanceof qr)) {
                this.j = true;
                if (this.m == 0) {
                    if (iOException != null) {
                        fe1 fe1VarC = zn1Var.c();
                        vs1 vs1Var = this.b;
                        y45.j(fe1VarC, "client");
                        y45.j(vs1Var, "failedRoute");
                        y45.j(iOException, "failure");
                        if (vs1Var.b().type() != Proxy.Type.DIRECT) {
                            ab abVarA = vs1Var.a();
                            abVarA.h().connectFailed(abVarA.k().l(), vs1Var.b().address(), iOException);
                        }
                        fe1VarC.n().b(vs1Var);
                    }
                    this.l++;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private final boolean a(gi0 gi0Var) {
        if0 if0Var;
        if (g92.f && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + this);
        }
        gi0 gi0VarK = this.b.a().k();
        if (gi0Var.i() != gi0VarK.i()) {
            return false;
        }
        if (y45.e(gi0Var.g(), gi0VarK.g())) {
            return true;
        }
        if (this.k || (if0Var = this.e) == null) {
            return false;
        }
        y45.g(if0Var);
        List<Certificate> listC = if0Var.c();
        if (listC.isEmpty()) {
            return false;
        }
        String strG = gi0Var.g();
        Certificate certificate = listC.get(0);
        y45.h(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
        return ee1.a(strG, (X509Certificate) certificate);
    }

    public final boolean a(boolean z) {
        long j;
        if (g92.f && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + this);
        }
        long jNanoTime = System.nanoTime();
        Socket socket = this.c;
        y45.g(socket);
        Socket socket2 = this.d;
        y45.g(socket2);
        BufferedSource bufferedSource = this.h;
        y45.g(bufferedSource);
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        hh0 hh0Var = this.g;
        if (hh0Var != null) {
            return hh0Var.a(jNanoTime);
        }
        synchronized (this) {
            j = jNanoTime - this.q;
        }
        if (j < RealConnection.IDLE_CONNECTION_HEALTHY_NS || !z) {
            return true;
        }
        return g92.a(socket2, bufferedSource);
    }
}
