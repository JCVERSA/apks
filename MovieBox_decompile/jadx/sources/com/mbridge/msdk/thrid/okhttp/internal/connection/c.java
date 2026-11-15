package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.thrid.okhttp.a0;
import com.mbridge.msdk.thrid.okhttp.h;
import com.mbridge.msdk.thrid.okhttp.i;
import com.mbridge.msdk.thrid.okhttp.n;
import com.mbridge.msdk.thrid.okhttp.o;
import com.mbridge.msdk.thrid.okhttp.q;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.x;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okio.l;
import com.mbridge.msdk.thrid.okio.s;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

public final class c extends com.mbridge.msdk.thrid.okhttp.internal.http2.g.j implements com.mbridge.msdk.thrid.okhttp.g {

    private final h f37109b;

    private final a0 f37110c;

    private Socket f37111d;

    private Socket f37112e;

    private o f37113f;

    private u f37114g;

    private com.mbridge.msdk.thrid.okhttp.internal.http2.g f37115h;

    private com.mbridge.msdk.thrid.okio.e f37116i;

    private com.mbridge.msdk.thrid.okio.d f37117j;

    public boolean f37118k;

    public int f37119l;

    public int f37120m = 1;

    public final List<Reference<g>> f37121n = new ArrayList();

    public long f37122o = Long.MAX_VALUE;

    public c(h hVar, a0 a0Var) {
        this.f37109b = hVar;
        this.f37110c = a0Var;
    }

    private w e() throws IOException {
        w wVarA = new w.a().a(this.f37110c.a().k()).a("CONNECT", (x) null).b(HttpHeaders.HOST, com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37110c.a().k(), true)).b("Proxy-Connection", "Keep-Alive").b("User-Agent", com.mbridge.msdk.thrid.okhttp.internal.d.a()).a();
        w wVarA2 = this.f37110c.a().g().a(this.f37110c, new y.a().a(wVarA).a(u.HTTP_1_1).a(TTAdConstant.DOWNLOAD_APP_INFO_CODE).a("Preemptive Authenticate").a(com.mbridge.msdk.thrid.okhttp.internal.c.f37071c).b(-1L).a(-1L).b("Proxy-Authenticate", "OkHttp-Preemptive").a());
        return wVarA2 != null ? wVarA2 : wVarA;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x0131  */
    /* JADX WARN: Code duplicated, block: B:57:0x0137  */
    /* JADX WARN: Code duplicated, block: B:59:0x013c  */
    /* JADX WARN: Code duplicated, block: B:77:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0144 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:? A[LOOP:0: B:73:0x0088->B:79:?, LOOP_END, SYNTHETIC] */
    public void a(int i10, int i11, int i12, int i13, boolean z10, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws Throwable {
        if (this.f37114g != null) {
            throw new IllegalStateException("already connected");
        }
        List<i> listB = this.f37110c.a().b();
        b bVar = new b(listB);
        if (this.f37110c.a().j() == null) {
            if (!listB.contains(i.f37058j)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String strG = this.f37110c.a().k().g();
            if (!com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().b(strG)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication to " + strG + " not permitted by network security policy"));
            }
        } else if (this.f37110c.a().e().contains(u.H2_PRIOR_KNOWLEDGE)) {
            throw new e(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
        }
        e eVar = null;
        while (true) {
            try {
                if (this.f37110c.c()) {
                    a(i10, i11, i12, dVar, nVar);
                    if (this.f37111d == null) {
                        break;
                    }
                } else {
                    try {
                        a(i10, i11, dVar, nVar);
                    } catch (IOException e10) {
                        e = e10;
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37112e);
                        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37111d);
                        this.f37112e = null;
                        this.f37111d = null;
                        this.f37116i = null;
                        this.f37117j = null;
                        this.f37113f = null;
                        this.f37114g = null;
                        this.f37115h = null;
                        nVar.connectFailed(dVar, this.f37110c.d(), this.f37110c.b(), null, e);
                        if (eVar == null) {
                            eVar = new e(e);
                        } else {
                            eVar.a(e);
                        }
                        if (z10) {
                            throw eVar;
                        }
                        if (bVar.a(e)) {
                            throw eVar;
                        }
                    }
                }
                try {
                    a(bVar, i13, dVar, nVar);
                    nVar.connectEnd(dVar, this.f37110c.d(), this.f37110c.b(), this.f37114g);
                    break;
                } catch (IOException e11) {
                    e = e11;
                    com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37112e);
                    com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37111d);
                    this.f37112e = null;
                    this.f37111d = null;
                    this.f37116i = null;
                    this.f37117j = null;
                    this.f37113f = null;
                    this.f37114g = null;
                    this.f37115h = null;
                    nVar.connectFailed(dVar, this.f37110c.d(), this.f37110c.b(), null, e);
                    if (eVar == null) {
                        eVar = new e(e);
                    } else {
                        eVar.a(e);
                    }
                    if (z10) {
                        throw eVar;
                    }
                    if (bVar.a(e)) {
                        throw eVar;
                    }
                }
            } catch (IOException e12) {
                e = e12;
            }
        }
        if (this.f37110c.c() && this.f37111d == null) {
            throw new e(new ProtocolException("Too many tunnel connections attempted: 21"));
        }
        if (this.f37115h != null) {
            synchronized (this.f37109b) {
                this.f37120m = this.f37115h.k();
            }
        }
    }

    @Override
    public o b() {
        return this.f37113f;
    }

    @Override
    public a0 c() {
        return this.f37110c;
    }

    public void d() {
        com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37111d);
    }

    public boolean f() {
        return this.f37115h != null;
    }

    public Socket g() {
        return this.f37112e;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Connection{");
        sb2.append(this.f37110c.a().k().g());
        sb2.append(":");
        sb2.append(this.f37110c.a().k().j());
        sb2.append(", proxy=");
        sb2.append(this.f37110c.b());
        sb2.append(" hostAddress=");
        sb2.append(this.f37110c.d());
        sb2.append(" cipherSuite=");
        o oVar = this.f37113f;
        sb2.append(oVar != null ? oVar.a() : "none");
        sb2.append(" protocol=");
        sb2.append(this.f37114g);
        sb2.append('}');
        return sb2.toString();
    }

    private void a(int i10, int i11, int i12, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        w wVarE = e();
        q qVarG = wVarE.g();
        for (int i13 = 0; i13 < 21; i13++) {
            a(i10, i11, dVar, nVar);
            wVarE = a(i11, i12, wVarE, qVarG);
            if (wVarE == null) {
                return;
            }
            com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37111d);
            this.f37111d = null;
            this.f37117j = null;
            this.f37116i = null;
            nVar.connectEnd(dVar, this.f37110c.d(), this.f37110c.b(), null);
        }
    }

    private void a(int i10, int i11, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws IOException {
        Proxy proxyB = this.f37110c.b();
        this.f37111d = (proxyB.type() == Proxy.Type.DIRECT || proxyB.type() == Proxy.Type.HTTP) ? this.f37110c.a().i().createSocket() : new Socket(proxyB);
        nVar.connectStart(dVar, this.f37110c.d(), proxyB);
        this.f37111d.setSoTimeout(i11);
        try {
            com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(this.f37111d, this.f37110c.d(), i10);
            try {
                this.f37116i = l.a(l.b(this.f37111d));
                this.f37117j = l.a(l.a(this.f37111d));
            } catch (NullPointerException e10) {
                if ("throw with null exception".equals(e10.getMessage())) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f37110c.d());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private void a(b bVar, int i10, com.mbridge.msdk.thrid.okhttp.d dVar, n nVar) throws Throwable {
        if (this.f37110c.a().j() == null) {
            List<u> listE = this.f37110c.a().e();
            u uVar = u.H2_PRIOR_KNOWLEDGE;
            if (listE.contains(uVar)) {
                this.f37112e = this.f37111d;
                this.f37114g = uVar;
                a(i10);
                return;
            } else {
                this.f37112e = this.f37111d;
                this.f37114g = u.HTTP_1_1;
                return;
            }
        }
        nVar.secureConnectStart(dVar);
        a(bVar);
        nVar.secureConnectEnd(dVar, this.f37113f);
        if (this.f37114g == u.HTTP_2) {
            a(i10);
        }
    }

    private void a(int i10) throws IOException {
        this.f37112e.setSoTimeout(0);
        com.mbridge.msdk.thrid.okhttp.internal.http2.g gVarA = new com.mbridge.msdk.thrid.okhttp.internal.http2.g.h(true).a(this.f37112e, this.f37110c.a().k().g(), this.f37116i, this.f37117j).a(this).a(i10).a();
        this.f37115h = gVarA;
        gVarA.m();
    }

    private void a(b bVar) throws Throwable {
        com.mbridge.msdk.thrid.okhttp.a aVarA = this.f37110c.a();
        SSLSocket sSLSocket = null;
        try {
            try {
                SSLSocket sSLSocket2 = (SSLSocket) aVarA.j().createSocket(this.f37111d, aVarA.k().g(), aVarA.k().j(), true);
                try {
                    i iVarA = bVar.a(sSLSocket2);
                    if (iVarA.c()) {
                        com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket2, aVarA.k().g(), aVarA.e());
                    }
                    sSLSocket2.startHandshake();
                    SSLSession session = sSLSocket2.getSession();
                    o oVarA = o.a(session);
                    if (!aVarA.d().verify(aVarA.k().g(), session)) {
                        List<Certificate> listB = oVarA.b();
                        if (!listB.isEmpty()) {
                            X509Certificate x509Certificate = (X509Certificate) listB.get(0);
                            throw new SSLPeerUnverifiedException("Hostname " + aVarA.k().g() + " not verified:\n    certificate: " + com.mbridge.msdk.thrid.okhttp.e.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + com.mbridge.msdk.thrid.okhttp.internal.tls.d.a(x509Certificate));
                        }
                        throw new SSLPeerUnverifiedException("Hostname " + aVarA.k().g() + " not verified (no certificates)");
                    }
                    aVarA.a().a(aVarA.k().g(), oVarA.b());
                    String strB = iVarA.c() ? com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().b(sSLSocket2) : null;
                    this.f37112e = sSLSocket2;
                    this.f37116i = l.a(l.b(sSLSocket2));
                    this.f37117j = l.a(l.a(this.f37112e));
                    this.f37113f = oVarA;
                    this.f37114g = strB != null ? u.a(strB) : u.HTTP_1_1;
                    com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket2);
                } catch (AssertionError e10) {
                    e = e10;
                    if (!com.mbridge.msdk.thrid.okhttp.internal.c.a(e)) {
                        throw e;
                    }
                    throw new IOException(e);
                } catch (Throwable th2) {
                    th = th2;
                    sSLSocket = sSLSocket2;
                    if (sSLSocket != null) {
                        com.mbridge.msdk.thrid.okhttp.internal.platform.g.d().a(sSLSocket);
                    }
                    com.mbridge.msdk.thrid.okhttp.internal.c.a((Socket) sSLSocket);
                    throw th;
                }
            } catch (AssertionError e11) {
                e = e11;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private w a(int i10, int i11, w wVar, q qVar) throws IOException {
        String str = "CONNECT " + com.mbridge.msdk.thrid.okhttp.internal.c.a(qVar, true) + " HTTP/1.1";
        while (true) {
            com.mbridge.msdk.thrid.okhttp.internal.http1.a aVar = new com.mbridge.msdk.thrid.okhttp.internal.http1.a(null, null, this.f37116i, this.f37117j);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f37116i.b().a(i10, timeUnit);
            this.f37117j.b().a(i11, timeUnit);
            aVar.a(wVar.c(), str);
            aVar.a();
            y yVarA = aVar.a(false).a(wVar).a();
            long jA = com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVarA);
            if (jA == -1) {
                jA = 0;
            }
            s sVarB = aVar.b(jA);
            com.mbridge.msdk.thrid.okhttp.internal.c.b(sVarB, Integer.MAX_VALUE, timeUnit);
            sVarB.close();
            int iK = yVarA.k();
            if (iK == 200) {
                if (this.f37116i.a().f() && this.f37117j.a().f()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iK == 407) {
                w wVarA = this.f37110c.a().g().a(this.f37110c, yVarA);
                if (wVarA != null) {
                    if ("close".equalsIgnoreCase(yVarA.b("Connection"))) {
                        return wVarA;
                    }
                    wVar = wVarA;
                } else {
                    throw new IOException("Failed to authenticate with proxy");
                }
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + yVarA.k());
            }
        }
    }

    public boolean a(com.mbridge.msdk.thrid.okhttp.a aVar, a0 a0Var) {
        if (this.f37121n.size() >= this.f37120m || this.f37118k || !com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(this.f37110c.a(), aVar)) {
            return false;
        }
        if (aVar.k().g().equals(c().a().k().g())) {
            return true;
        }
        if (this.f37115h == null || a0Var == null) {
            return false;
        }
        Proxy.Type type = a0Var.b().type();
        Proxy.Type type2 = Proxy.Type.DIRECT;
        if (type != type2 || this.f37110c.b().type() != type2 || !this.f37110c.d().equals(a0Var.d()) || a0Var.a().d() != com.mbridge.msdk.thrid.okhttp.internal.tls.d.f37426a || !a(aVar.k())) {
            return false;
        }
        try {
            aVar.a().a(aVar.k().g(), b().b());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean a(q qVar) {
        if (qVar.j() != this.f37110c.a().k().j()) {
            return false;
        }
        if (qVar.g().equals(this.f37110c.a().k().g())) {
            return true;
        }
        return this.f37113f != null && com.mbridge.msdk.thrid.okhttp.internal.tls.d.f37426a.a(qVar.g(), (X509Certificate) this.f37113f.b().get(0));
    }

    public com.mbridge.msdk.thrid.okhttp.internal.http.c a(t tVar, r.a aVar, g gVar) throws SocketException {
        if (this.f37115h != null) {
            return new com.mbridge.msdk.thrid.okhttp.internal.http2.f(tVar, aVar, gVar, this.f37115h);
        }
        this.f37112e.setSoTimeout(aVar.b());
        com.mbridge.msdk.thrid.okio.t tVarB = this.f37116i.b();
        long jB = aVar.b();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        tVarB.a(jB, timeUnit);
        this.f37117j.b().a(aVar.c(), timeUnit);
        return new com.mbridge.msdk.thrid.okhttp.internal.http1.a(tVar, gVar, this.f37116i, this.f37117j);
    }

    public boolean a(boolean z10) {
        if (this.f37112e.isClosed() || this.f37112e.isInputShutdown() || this.f37112e.isOutputShutdown()) {
            return false;
        }
        com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar = this.f37115h;
        if (gVar != null) {
            return gVar.f(System.nanoTime());
        }
        if (z10) {
            try {
                int soTimeout = this.f37112e.getSoTimeout();
                try {
                    this.f37112e.setSoTimeout(1);
                    if (this.f37116i.f()) {
                        this.f37112e.setSoTimeout(soTimeout);
                        return false;
                    }
                    this.f37112e.setSoTimeout(soTimeout);
                    return true;
                } catch (Throwable th2) {
                    this.f37112e.setSoTimeout(soTimeout);
                    throw th2;
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.i iVar) throws IOException {
        iVar.a(com.mbridge.msdk.thrid.okhttp.internal.http2.b.REFUSED_STREAM);
    }

    @Override
    public void a(com.mbridge.msdk.thrid.okhttp.internal.http2.g gVar) {
        synchronized (this.f37109b) {
            this.f37120m = gVar.k();
        }
    }

    @Override
    public u a() {
        return this.f37114g;
    }
}
