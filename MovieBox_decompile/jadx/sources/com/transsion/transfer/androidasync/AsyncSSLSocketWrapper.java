package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.AbstractVerifier;
import org.apache.http.conn.ssl.StrictHostnameVerifier;

public class AsyncSSLSocketWrapper implements j, p, com.transsion.transfer.androidasync.a {

    static SSLContext f53034v;

    static SSLContext f53035w;

    static TrustManager[] f53036x;

    static HostnameVerifier f53037y;

    j f53038a;

    n f53039b;

    boolean f53040c;

    SSLEngine f53041d;

    boolean f53042e;

    private int f53043f;

    private String f53044g;

    private boolean f53045h;

    HostnameVerifier f53046i;

    g f53047j;

    X509Certificate[] f53048k;

    st.j f53049l;

    st.d f53050m;

    TrustManager[] f53051n;

    boolean f53052o;

    boolean f53053p;

    Exception f53054q;

    final ByteBufferList f53055r = new ByteBufferList();

    final st.d f53056s;

    ByteBufferList f53057t;

    st.a f53058u;

    class a implements X509TrustManager {
        a() {
        }

        @Override
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                if (x509Certificate != null && x509Certificate.getCriticalExtensionOIDs() != null) {
                    x509Certificate.getCriticalExtensionOIDs().remove("2.5.29.15");
                }
            }
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    class b implements X509TrustManager {
        b() {
        }

        @Override
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    class c implements st.a {

        final g f53059a;

        c(g gVar) {
            this.f53059a = gVar;
        }

        @Override
        public void g(Exception exc) {
            if (exc != null) {
                this.f53059a.a(exc, null);
            } else {
                this.f53059a.a(new SSLException("socket closed during handshake"), null);
            }
        }
    }

    class d implements st.j {
        d() {
        }

        @Override
        public void a() {
            st.j jVar = AsyncSSLSocketWrapper.this.f53049l;
            if (jVar != null) {
                jVar.a();
            }
        }
    }

    class e implements st.a {
        e() {
        }

        @Override
        public void g(Exception exc) {
            st.a aVar;
            AsyncSSLSocketWrapper asyncSSLSocketWrapper = AsyncSSLSocketWrapper.this;
            if (asyncSSLSocketWrapper.f53053p) {
                return;
            }
            asyncSSLSocketWrapper.f53053p = true;
            asyncSSLSocketWrapper.f53054q = exc;
            if (asyncSSLSocketWrapper.f53055r.r() || (aVar = AsyncSSLSocketWrapper.this.f53058u) == null) {
                return;
            }
            aVar.g(exc);
        }
    }

    class f implements st.d {

        final com.transsion.transfer.androidasync.util.a f53062a = new com.transsion.transfer.androidasync.util.a().d(8192);

        final ByteBufferList f53063b = new ByteBufferList();

        f() {
        }

        @Override
        public void C(p pVar, ByteBufferList byteBufferList) {
            AsyncSSLSocketWrapper asyncSSLSocketWrapper = AsyncSSLSocketWrapper.this;
            if (asyncSSLSocketWrapper.f53040c) {
                return;
            }
            try {
                try {
                    asyncSSLSocketWrapper.f53040c = true;
                    byteBufferList.f(this.f53063b);
                    if (this.f53063b.r()) {
                        this.f53063b.a(this.f53063b.j());
                    }
                    ByteBuffer byteBufferD = ByteBufferList.f53097j;
                    while (true) {
                        if (byteBufferD.remaining() == 0 && this.f53063b.E() > 0) {
                            byteBufferD = this.f53063b.D();
                        }
                        int iRemaining = byteBufferD.remaining();
                        int iC = AsyncSSLSocketWrapper.this.f53055r.C();
                        ByteBuffer byteBufferA = this.f53062a.a();
                        SSLEngineResult sSLEngineResultUnwrap = AsyncSSLSocketWrapper.this.f53041d.unwrap(byteBufferD, byteBufferA);
                        AsyncSSLSocketWrapper asyncSSLSocketWrapper2 = AsyncSSLSocketWrapper.this;
                        asyncSSLSocketWrapper2.m(asyncSSLSocketWrapper2.f53055r, byteBufferA);
                        this.f53062a.e(AsyncSSLSocketWrapper.this.f53055r.C() - iC);
                        if (sSLEngineResultUnwrap.getStatus() != SSLEngineResult.Status.BUFFER_OVERFLOW) {
                            if (sSLEngineResultUnwrap.getStatus() != SSLEngineResult.Status.BUFFER_UNDERFLOW) {
                                AsyncSSLSocketWrapper.this.t(sSLEngineResultUnwrap.getHandshakeStatus());
                                if (byteBufferD.remaining() != iRemaining && iC == AsyncSSLSocketWrapper.this.f53055r.C()) {
                                    this.f53063b.c(byteBufferD);
                                    break;
                                }
                            } else {
                                this.f53063b.c(byteBufferD);
                                if (this.f53063b.E() <= 1) {
                                    break;
                                }
                                this.f53063b.c(this.f53063b.j());
                                byteBufferD = ByteBufferList.f53097j;
                            }
                        } else {
                            com.transsion.transfer.androidasync.util.a aVar = this.f53062a;
                            aVar.d(aVar.c() * 2);
                        }
                        iRemaining = -1;
                        AsyncSSLSocketWrapper.this.t(sSLEngineResultUnwrap.getHandshakeStatus());
                        if (byteBufferD.remaining() != iRemaining) {
                        }
                    }
                    AsyncSSLSocketWrapper.this.E();
                } catch (SSLException e10) {
                    AsyncSSLSocketWrapper.this.H(e10);
                }
            } finally {
                AsyncSSLSocketWrapper.this.f53040c = false;
            }
        }
    }

    public interface g {
        void a(Exception exc, com.transsion.transfer.androidasync.a aVar);
    }

    static {
        try {
            f53034v = SSLContext.getInstance("Default");
        } catch (Exception e10) {
            try {
                f53034v = SSLContext.getInstance("TLS");
                f53034v.init(null, new TrustManager[]{new a()}, null);
            } catch (Exception e11) {
                e10.printStackTrace();
                e11.printStackTrace();
            }
        }
        try {
            f53035w = SSLContext.getInstance("TLS");
            TrustManager[] trustManagerArr = {new b()};
            f53036x = trustManagerArr;
            f53035w.init(null, trustManagerArr, null);
            f53037y = new HostnameVerifier() {
                @Override
                public final boolean verify(String str, SSLSession sSLSession) {
                    return AsyncSSLSocketWrapper.C(str, sSLSession);
                }
            };
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    private AsyncSSLSocketWrapper(j jVar, String str, int i10, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z10) {
        f fVar = new f();
        this.f53056s = fVar;
        this.f53057t = new ByteBufferList();
        this.f53038a = jVar;
        this.f53046i = hostnameVerifier;
        this.f53052o = z10;
        this.f53051n = trustManagerArr;
        this.f53041d = sSLEngine;
        this.f53044g = str;
        this.f53043f = i10;
        sSLEngine.setUseClientMode(z10);
        n nVar = new n(jVar);
        this.f53039b = nVar;
        nVar.B(new d());
        this.f53038a.h(new e());
        this.f53038a.F(fVar);
    }

    public static boolean C(String str, SSLSession sSLSession) {
        return true;
    }

    public void H(Exception exc) {
        g gVar = this.f53047j;
        if (gVar == null) {
            st.a aVarR = r();
            if (aVarR != null) {
                aVarR.g(exc);
                return;
            }
            return;
        }
        this.f53047j = null;
        this.f53038a.F(new st.d.a());
        this.f53038a.d();
        this.f53038a.i(null);
        this.f53038a.close();
        gVar.a(exc, null);
    }

    public static SSLContext p() {
        return f53034v;
    }

    public void t(SSLEngineResult.HandshakeStatus handshakeStatus) {
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK) {
            this.f53041d.getDelegatedTask().run();
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
            n(this.f53057t);
        }
        if (handshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
            this.f53056s.C(this, new ByteBufferList());
        }
        try {
            if (this.f53042e) {
                return;
            }
            if (this.f53041d.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING && this.f53041d.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.FINISHED) {
                return;
            }
            if (this.f53052o) {
                boolean z10 = false;
                try {
                    this.f53048k = (X509Certificate[]) this.f53041d.getSession().getPeerCertificates();
                    String str = this.f53044g;
                    if (str != null) {
                        HostnameVerifier hostnameVerifier = this.f53046i;
                        if (hostnameVerifier == null) {
                            new StrictHostnameVerifier().verify(this.f53044g, AbstractVerifier.getCNs(this.f53048k[0]), AbstractVerifier.getDNSSubjectAlts(this.f53048k[0]));
                        } else if (!hostnameVerifier.verify(str, this.f53041d.getSession())) {
                            throw new SSLException("hostname <" + this.f53044g + "> has been denied");
                        }
                    }
                    z10 = true;
                    e = null;
                } catch (SSLException e10) {
                    e = e10;
                }
                this.f53042e = true;
                if (!z10) {
                    AsyncSSLException asyncSSLException = new AsyncSSLException(e);
                    H(asyncSSLException);
                    if (!asyncSSLException.getIgnore()) {
                        throw asyncSSLException;
                    }
                }
            } else {
                this.f53042e = true;
            }
            this.f53047j.a(null, this);
            this.f53047j = null;
            this.f53038a.i(null);
            a().D(new Runnable() {
                @Override
                public void run() {
                    st.j jVar = AsyncSSLSocketWrapper.this.f53049l;
                    if (jVar != null) {
                        jVar.a();
                    }
                }
            });
            E();
        } catch (Exception e11) {
            H(e11);
        }
    }

    public static void v(j jVar, String str, int i10, SSLEngine sSLEngine, TrustManager[] trustManagerArr, HostnameVerifier hostnameVerifier, boolean z10, g gVar) {
        AsyncSSLSocketWrapper asyncSSLSocketWrapper = new AsyncSSLSocketWrapper(jVar, str, i10, sSLEngine, trustManagerArr, hostnameVerifier, z10);
        asyncSSLSocketWrapper.f53047j = gVar;
        jVar.i(new c(gVar));
        try {
            asyncSSLSocketWrapper.f53041d.beginHandshake();
            asyncSSLSocketWrapper.t(asyncSSLSocketWrapper.f53041d.getHandshakeStatus());
        } catch (SSLException e10) {
            asyncSSLSocketWrapper.H(e10);
        }
    }

    @Override
    public void B(st.j jVar) {
        this.f53049l = jVar;
    }

    public void E() {
        st.a aVar;
        a0.a(this, this.f53055r);
        if (!this.f53053p || this.f53055r.r() || (aVar = this.f53058u) == null) {
            return;
        }
        aVar.g(this.f53054q);
    }

    @Override
    public void F(st.d dVar) {
        this.f53050m = dVar;
    }

    @Override
    public st.d G() {
        return this.f53050m;
    }

    @Override
    public AsyncServer a() {
        return this.f53038a.a();
    }

    @Override
    public void close() {
        this.f53038a.close();
    }

    @Override
    public void d() {
        this.f53038a.d();
    }

    @Override
    public void h(st.a aVar) {
        this.f53058u = aVar;
    }

    @Override
    public void i(st.a aVar) {
        this.f53038a.i(aVar);
    }

    @Override
    public boolean isOpen() {
        return this.f53038a.isOpen();
    }

    @Override
    public boolean isPaused() {
        return this.f53038a.isPaused();
    }

    @Override
    public st.j k() {
        return this.f53049l;
    }

    void m(ByteBufferList byteBufferList, ByteBuffer byteBuffer) {
        byteBuffer.flip();
        if (byteBuffer.hasRemaining()) {
            byteBufferList.a(byteBuffer);
        } else {
            ByteBufferList.A(byteBuffer);
        }
    }

    @Override
    public void n(ByteBufferList byteBufferList) {
        if (!this.f53045h && this.f53039b.l() <= 0) {
            this.f53045h = true;
            ByteBuffer byteBufferT = ByteBufferList.t(o(byteBufferList.C()));
            SSLEngineResult sSLEngineResultWrap = null;
            do {
                if (!this.f53042e || byteBufferList.C() != 0) {
                    int iC = byteBufferList.C();
                    try {
                        ByteBuffer[] byteBufferArrK = byteBufferList.k();
                        sSLEngineResultWrap = this.f53041d.wrap(byteBufferArrK, byteBufferT);
                        byteBufferList.b(byteBufferArrK);
                        byteBufferT.flip();
                        this.f53057t.a(byteBufferT);
                        if (this.f53057t.C() > 0) {
                            this.f53039b.n(this.f53057t);
                        }
                        int iCapacity = byteBufferT.capacity();
                        try {
                            if (sSLEngineResultWrap.getStatus() == SSLEngineResult.Status.BUFFER_OVERFLOW) {
                                byteBufferT = ByteBufferList.t(iCapacity * 2);
                                iC = -1;
                            } else {
                                byteBufferT = ByteBufferList.t(o(byteBufferList.C()));
                                t(sSLEngineResultWrap.getHandshakeStatus());
                            }
                        } catch (SSLException e10) {
                            e = e10;
                            byteBufferT = null;
                            H(e);
                        }
                    } catch (SSLException e11) {
                        e = e11;
                    }
                    if (iC == byteBufferList.C() && (sSLEngineResultWrap == null || sSLEngineResultWrap.getHandshakeStatus() != SSLEngineResult.HandshakeStatus.NEED_WRAP)) {
                        break;
                    }
                } else {
                    break;
                }
            } while (this.f53039b.l() == 0);
            this.f53045h = false;
            ByteBufferList.A(byteBufferT);
        }
    }

    int o(int i10) {
        int i11 = (i10 * 3) / 2;
        if (i11 == 0) {
            return 8192;
        }
        return i11;
    }

    @Override
    public void pause() {
        this.f53038a.pause();
    }

    public st.a r() {
        return this.f53058u;
    }

    @Override
    public void resume() {
        this.f53038a.resume();
        E();
    }

    @Override
    public String s() {
        return null;
    }
}
