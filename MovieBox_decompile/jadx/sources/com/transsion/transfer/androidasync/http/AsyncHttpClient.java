package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.AsyncSSLException;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeoutException;

public class AsyncHttpClient {

    private static AsyncHttpClient f53166f;

    final List f53167a = new CopyOnWriteArrayList();

    n f53168b;

    t f53169c;

    v f53170d;

    AsyncServer f53171e;

    class a implements st.b {

        boolean f53172a;

        final com.transsion.transfer.androidasync.http.j f53173b;

        final h f53174c;

        final ut.a f53175d;

        final com.transsion.transfer.androidasync.http.g.C0647g f53176e;

        final int f53177f;

        a(com.transsion.transfer.androidasync.http.j jVar, h hVar, ut.a aVar, com.transsion.transfer.androidasync.http.g.C0647g c0647g, int i10) {
            this.f53173b = jVar;
            this.f53174c = hVar;
            this.f53175d = aVar;
            this.f53176e = c0647g;
            this.f53177f = i10;
        }

        @Override
        public void a(Exception exc, com.transsion.transfer.androidasync.j jVar) {
            if (this.f53172a && jVar != null) {
                jVar.F(new st.d.a());
                jVar.h(new st.a.C0886a());
                jVar.close();
                throw new AssertionError("double connect callback");
            }
            this.f53172a = true;
            this.f53173b.u("socket connected");
            if (this.f53174c.isCancelled()) {
                if (jVar != null) {
                    jVar.close();
                    return;
                }
                return;
            }
            h hVar = this.f53174c;
            if (hVar.f53206h != null) {
                hVar.f53205g.cancel();
            }
            if (exc != null) {
                AsyncHttpClient.this.H(this.f53174c, exc, null, this.f53173b, this.f53175d);
                return;
            }
            com.transsion.transfer.androidasync.http.g.C0647g c0647g = this.f53176e;
            c0647g.f53284f = jVar;
            h hVar2 = this.f53174c;
            hVar2.f53204f = jVar;
            AsyncHttpClient.this.u(this.f53173b, this.f53177f, hVar2, this.f53175d, c0647g);
        }
    }

    class b extends l {

        final h f53179q;

        final com.transsion.transfer.androidasync.http.j f53180r;

        final ut.a f53181s;

        final com.transsion.transfer.androidasync.http.g.C0647g f53182t;

        final int f53183u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.transsion.transfer.androidasync.http.j jVar, h hVar, com.transsion.transfer.androidasync.http.j jVar2, ut.a aVar, com.transsion.transfer.androidasync.http.g.C0647g c0647g, int i10) {
            super(jVar);
            this.f53179q = hVar;
            this.f53180r = jVar2;
            this.f53181s = aVar;
            this.f53182t = c0647g;
            this.f53183u = i10;
        }

        public void W(com.transsion.transfer.androidasync.http.j jVar, int i10, h hVar, ut.a aVar) {
            AsyncHttpClient.this.r(jVar, i10, hVar, aVar);
        }

        public void X(com.transsion.transfer.androidasync.http.j jVar, int i10, h hVar, ut.a aVar) {
            AsyncHttpClient.this.r(jVar, i10 + 1, hVar, aVar);
        }

        @Override
        public void M(Exception exc) {
            if (exc != null) {
                this.f53180r.s("exception during response", exc);
            }
            if (this.f53179q.isCancelled()) {
                return;
            }
            if (exc instanceof AsyncSSLException) {
                this.f53180r.s("SSL Exception", exc);
                AsyncSSLException asyncSSLException = (AsyncSSLException) exc;
                this.f53180r.v(asyncSSLException);
                if (asyncSSLException.getIgnore()) {
                    return;
                }
            }
            com.transsion.transfer.androidasync.j jVarSocket = socket();
            if (jVarSocket == null) {
                return;
            }
            super.M(exc);
            if ((!jVarSocket.isOpen() || exc != null) && e() == null && exc != null) {
                AsyncHttpClient.this.H(this.f53179q, exc, null, this.f53180r, this.f53181s);
            }
            this.f53182t.f53290k = exc;
            Iterator it = AsyncHttpClient.this.f53167a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).b(this.f53182t);
            }
        }

        @Override
        public void N(com.transsion.transfer.androidasync.p pVar) {
            this.f53182t.f53283j = pVar;
            Iterator it = AsyncHttpClient.this.f53167a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).d(this.f53182t);
            }
            super.N(this.f53182t.f53283j);
            Iterator it2 = AsyncHttpClient.this.f53167a.iterator();
            while (it2.hasNext()) {
                final com.transsion.transfer.androidasync.http.j jVarH = ((com.transsion.transfer.androidasync.http.g) it2.next()).h(this.f53182t);
                if (jVarH != null) {
                    com.transsion.transfer.androidasync.http.j jVar = this.f53180r;
                    jVarH.f53302l = jVar.f53302l;
                    jVarH.f53301k = jVar.f53301k;
                    jVarH.f53300j = jVar.f53300j;
                    jVarH.f53298h = jVar.f53298h;
                    jVarH.f53299i = jVar.f53299i;
                    AsyncHttpClient.I(jVarH);
                    this.f53180r.t("Response intercepted by middleware");
                    jVarH.t("Request initiated by middleware intercept by middleware");
                    AsyncServer asyncServer = AsyncHttpClient.this.f53171e;
                    final int i10 = this.f53183u;
                    final h hVar = this.f53179q;
                    final ut.a aVar = this.f53181s;
                    asyncServer.D(new Runnable() {
                        @Override
                        public final void run() {
                            this.f53251a.W(jVarH, i10, hVar, aVar);
                        }
                    });
                    F(new st.d.a());
                    return;
                }
            }
            Headers headers = this.f53307j;
            int iB = b();
            if ((iB != 301 && iB != 302 && iB != 307) || !this.f53180r.g()) {
                this.f53180r.u("Final (post cache response) headers:\n" + toString());
                AsyncHttpClient.this.H(this.f53179q, null, this, this.f53180r, this.f53181s);
                return;
            }
            String strC = headers.c(HttpHeaders.LOCATION);
            try {
                Uri uri = Uri.parse(strC);
                if (uri.getScheme() == null) {
                    uri = Uri.parse(new URL(new URL(this.f53180r.p().toString()), strC).toString());
                }
                final com.transsion.transfer.androidasync.http.j jVar2 = new com.transsion.transfer.androidasync.http.j(uri, this.f53180r.j().equals("HEAD") ? "HEAD" : "GET");
                com.transsion.transfer.androidasync.http.j jVar3 = this.f53180r;
                jVar2.f53302l = jVar3.f53302l;
                jVar2.f53301k = jVar3.f53301k;
                jVar2.f53300j = jVar3.f53300j;
                jVar2.f53298h = jVar3.f53298h;
                jVar2.f53299i = jVar3.f53299i;
                AsyncHttpClient.I(jVar2);
                AsyncHttpClient.o(this.f53180r, jVar2, "User-Agent");
                AsyncHttpClient.o(this.f53180r, jVar2, "Range");
                this.f53180r.t("Redirecting");
                jVar2.t("Redirected");
                AsyncServer asyncServer2 = AsyncHttpClient.this.f53171e;
                final int i11 = this.f53183u;
                final h hVar2 = this.f53179q;
                final ut.a aVar2 = this.f53181s;
                asyncServer2.D(new Runnable() {
                    @Override
                    public final void run() {
                        this.f53258a.X(jVar2, i11, hVar2, aVar2);
                    }
                });
                F(new st.d.a());
            } catch (Exception e10) {
                AsyncHttpClient.this.H(this.f53179q, e10, this, this.f53180r, this.f53181s);
            }
        }

        @Override
        protected void P() {
            super.P();
            if (this.f53179q.isCancelled()) {
                return;
            }
            h hVar = this.f53179q;
            if (hVar.f53206h != null) {
                hVar.f53205g.cancel();
            }
            this.f53180r.u("Received headers:\n" + toString());
            Iterator it = AsyncHttpClient.this.f53167a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).g(this.f53182t);
            }
        }

        @Override
        protected void R(Exception exc) {
            if (exc != null) {
                AsyncHttpClient.this.H(this.f53179q, exc, null, this.f53180r, this.f53181s);
                return;
            }
            this.f53180r.u("request completed");
            if (this.f53179q.isCancelled()) {
                return;
            }
            h hVar = this.f53179q;
            if (hVar.f53206h != null && this.f53307j == null) {
                hVar.f53205g.cancel();
                h hVar2 = this.f53179q;
                hVar2.f53205g = AsyncHttpClient.this.f53171e.E(hVar2.f53206h, AsyncHttpClient.y(this.f53180r));
            }
            Iterator it = AsyncHttpClient.this.f53167a.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.http.g) it.next()).c(this.f53182t);
            }
        }

        @Override
        public com.transsion.transfer.androidasync.j w() {
            this.f53180r.r("Detaching socket");
            com.transsion.transfer.androidasync.j jVarSocket = socket();
            if (jVarSocket == null) {
                return null;
            }
            jVarSocket.B(null);
            jVarSocket.i(null);
            jVarSocket.h(null);
            jVarSocket.F(null);
            S(null);
            return jVarSocket;
        }
    }

    class c implements st.a {

        final l f53185a;

        c(l lVar) {
            this.f53185a = lVar;
        }

        @Override
        public void g(Exception exc) {
            if (exc != null) {
                this.f53185a.M(exc);
            } else {
                this.f53185a.Q();
            }
        }
    }

    class d implements st.a {

        final l f53187a;

        d(l lVar) {
            this.f53187a = lVar;
        }

        @Override
        public void g(Exception exc) {
            if (exc != null) {
                this.f53187a.M(exc);
            } else {
                this.f53187a.P();
            }
        }
    }

    class e extends com.transsion.transfer.androidasync.future.w {

        final h f53189f;

        final OutputStream f53190g;

        final File f53191h;

        e(h hVar, OutputStream outputStream, File file) {
            this.f53189f = hVar;
            this.f53190g = outputStream;
            this.f53191h = file;
        }

        @Override
        public void cancelCleanup() {
            try {
                ((com.transsion.transfer.androidasync.http.k) this.f53189f.get()).F(new st.d.a());
                ((com.transsion.transfer.androidasync.http.k) this.f53189f.get()).close();
            } catch (Exception unused) {
            }
            try {
                this.f53190g.close();
            } catch (Exception unused2) {
            }
            this.f53191h.delete();
        }
    }

    class f implements ut.a {

        long f53193a = 0;

        final OutputStream f53194b;

        final File f53195c;

        final g f53196d;

        final com.transsion.transfer.androidasync.future.w f53197e;

        class a extends com.transsion.transfer.androidasync.stream.a {

            final com.transsion.transfer.androidasync.http.k f53199b;

            final long f53200c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(OutputStream outputStream, com.transsion.transfer.androidasync.http.k kVar, long j10) {
                super(outputStream);
                this.f53199b = kVar;
                this.f53200c = j10;
            }

            @Override
            public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
                f.this.f53193a += (long) byteBufferList.C();
                super.C(pVar, byteBufferList);
                f fVar = f.this;
                AsyncHttpClient.this.C(fVar.f53196d, this.f53199b, fVar.f53193a, this.f53200c);
            }
        }

        class b implements st.a {

            final com.transsion.transfer.androidasync.http.k f53202a;

            b(com.transsion.transfer.androidasync.http.k kVar) {
                this.f53202a = kVar;
            }

            @Override
            public void g(Exception e10) {
                try {
                    f.this.f53194b.close();
                } catch (IOException e11) {
                    e10 = e11;
                }
                Exception exc = e10;
                if (exc == null) {
                    f fVar = f.this;
                    AsyncHttpClient.this.E(fVar.f53196d, fVar.f53197e, this.f53202a, null, fVar.f53195c);
                } else {
                    f.this.f53195c.delete();
                    f fVar2 = f.this;
                    AsyncHttpClient.this.E(fVar2.f53196d, fVar2.f53197e, this.f53202a, exc, null);
                }
            }
        }

        f(OutputStream outputStream, File file, g gVar, com.transsion.transfer.androidasync.future.w wVar) {
            this.f53194b = outputStream;
            this.f53195c = file;
            this.f53196d = gVar;
            this.f53197e = wVar;
        }

        @Override
        public void a(Exception exc, com.transsion.transfer.androidasync.http.k kVar) {
            if (exc != null) {
                try {
                    this.f53194b.close();
                } catch (IOException unused) {
                }
                this.f53195c.delete();
                AsyncHttpClient.this.E(this.f53196d, this.f53197e, kVar, exc, null);
            } else {
                AsyncHttpClient.this.B(this.f53196d, kVar);
                kVar.F(new a(this.f53194b, kVar, HttpUtil.a(kVar.e())));
                kVar.h(new b(kVar));
            }
        }
    }

    public static abstract class g extends i {
    }

    class h extends com.transsion.transfer.androidasync.future.w {

        public com.transsion.transfer.androidasync.j f53204f;

        public com.transsion.transfer.androidasync.future.a f53205g;

        public Runnable f53206h;

        @Override
        public boolean cancel() {
            if (!super.cancel()) {
                return false;
            }
            com.transsion.transfer.androidasync.j jVar = this.f53204f;
            if (jVar != null) {
                jVar.F(new st.d.a());
                this.f53204f.close();
            }
            com.transsion.transfer.androidasync.future.a aVar = this.f53205g;
            if (aVar == null) {
                return true;
            }
            aVar.cancel();
            return true;
        }

        private h() {
        }
    }

    public static abstract class i implements ut.b {
        @Override
        public void a(com.transsion.transfer.androidasync.http.k kVar, long j10, long j11) {
        }

        @Override
        public void b(com.transsion.transfer.androidasync.http.k kVar) {
        }
    }

    public static abstract class j extends i {
    }

    public interface k {
        void a(Exception exc, b0 b0Var);
    }

    public AsyncHttpClient(AsyncServer asyncServer) {
        this.f53171e = asyncServer;
        t tVar = new t(this);
        this.f53169c = tVar;
        z(tVar);
        n nVar = new n(this);
        this.f53168b = nVar;
        z(nVar);
        v vVar = new v();
        this.f53170d = vVar;
        z(vVar);
        this.f53168b.A(new z());
    }

    public void E(final ut.b bVar, final com.transsion.transfer.androidasync.future.w wVar, final com.transsion.transfer.androidasync.http.k kVar, final Exception exc, final Object obj) {
        this.f53171e.D(new Runnable() {
            @Override
            public void run() {
                AsyncHttpClient.this.D(bVar, wVar, kVar, exc, obj);
            }
        });
    }

    public void B(ut.b bVar, com.transsion.transfer.androidasync.http.k kVar) {
        if (bVar != null) {
            bVar.b(kVar);
        }
    }

    public void C(ut.b bVar, com.transsion.transfer.androidasync.http.k kVar, long j10, long j11) {
        if (bVar != null) {
            bVar.a(kVar, j10, j11);
        }
    }

    public void D(ut.b bVar, com.transsion.transfer.androidasync.future.w wVar, com.transsion.transfer.androidasync.http.k kVar, Exception exc, Object obj) {
        if ((exc != null ? wVar.G(exc) : wVar.J(obj)) && bVar != null) {
            bVar.c(exc, kVar, obj);
        }
    }

    public void F(final ut.b bVar, final com.transsion.transfer.androidasync.future.w wVar, wt.a aVar, Exception exc, final com.transsion.transfer.androidasync.http.k kVar) {
        if (exc != null) {
            E(bVar, wVar, kVar, exc, null);
            return;
        }
        B(bVar, kVar);
        com.transsion.transfer.androidasync.future.f fVarA = aVar.a(kVar);
        fVarA.f(new com.transsion.transfer.androidasync.future.g() {
            @Override
            public final void a(Exception exc2, Object obj) {
                this.f53242a.E(bVar, wVar, kVar, exc2, obj);
            }
        });
        wVar.setParent(fVarA);
    }

    public static void G(com.transsion.transfer.androidasync.future.w wVar, k kVar, com.transsion.transfer.androidasync.http.j jVar, Exception exc, com.transsion.transfer.androidasync.http.k kVar2) {
        if (exc != null) {
            if (!wVar.G(exc) || kVar == null) {
                return;
            }
            kVar.a(exc, null);
            return;
        }
        b0 b0VarH = f0.H(jVar.h(), kVar2);
        if (b0VarH == null) {
            exc = new WebSocketHandshakeException("Unable to complete websocket handshake");
            kVar2.close();
            if (!wVar.G(exc)) {
                return;
            }
        } else if (!wVar.J(b0VarH)) {
            return;
        }
        if (kVar != null) {
            kVar.a(exc, b0VarH);
        }
    }

    public void H(h hVar, Exception exc, l lVar, com.transsion.transfer.androidasync.http.j jVar, ut.a aVar) {
        boolean zJ;
        hVar.f53205g.cancel();
        if (exc != null) {
            jVar.s("Connection error", exc);
            zJ = hVar.G(exc);
        } else {
            jVar.r("Connection successful");
            zJ = hVar.J(lVar);
        }
        if (zJ) {
            aVar.a(exc, lVar);
        } else if (lVar != null) {
            lVar.F(new st.d.a());
            lVar.close();
        }
    }

    public static void I(com.transsion.transfer.androidasync.http.j jVar) {
        if (jVar.f53298h != null) {
            return;
        }
        try {
            List<Proxy> listSelect = ProxySelector.getDefault().select(URI.create(jVar.p().toString()));
            if (listSelect.isEmpty()) {
                return;
            }
            Proxy proxy = listSelect.get(0);
            if (proxy.type() == Proxy.Type.HTTP && (proxy.address() instanceof InetSocketAddress)) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                jVar.d(inetSocketAddress.getHostString(), inetSocketAddress.getPort());
            }
        } catch (Exception unused) {
        }
    }

    public static void o(com.transsion.transfer.androidasync.http.j jVar, com.transsion.transfer.androidasync.http.j jVar2, String str) {
        String strC = jVar.h().c(str);
        if (TextUtils.isEmpty(strC)) {
            return;
        }
        jVar2.h().f(str, strC);
    }

    public void r(final com.transsion.transfer.androidasync.http.j jVar, final int i10, final h hVar, final ut.a aVar) {
        if (this.f53171e.t()) {
            s(jVar, i10, hVar, aVar);
        } else {
            this.f53171e.D(new Runnable() {
                @Override
                public void run() {
                    AsyncHttpClient.this.s(jVar, i10, hVar, aVar);
                }
            });
        }
    }

    public void s(final com.transsion.transfer.androidasync.http.j jVar, int i10, final h hVar, final ut.a aVar) {
        if (i10 > 15) {
            H(hVar, new RedirectLimitExceededException("too many redirects"), null, jVar, aVar);
            return;
        }
        jVar.p();
        final com.transsion.transfer.androidasync.http.g.C0647g c0647g = new com.transsion.transfer.androidasync.http.g.C0647g();
        jVar.f53302l = System.currentTimeMillis();
        c0647g.f53289b = jVar;
        jVar.r("Executing request.");
        Iterator it = this.f53167a.iterator();
        while (it.hasNext()) {
            ((com.transsion.transfer.androidasync.http.g) it.next()).a(c0647g);
        }
        if (jVar.o() > 0) {
            Runnable runnable = new Runnable() {
                @Override
                public void run() {
                    com.transsion.transfer.androidasync.future.a aVar2 = c0647g.f53281d;
                    if (aVar2 != null) {
                        aVar2.cancel();
                        com.transsion.transfer.androidasync.j jVar2 = c0647g.f53284f;
                        if (jVar2 != null) {
                            jVar2.close();
                        }
                    }
                    AsyncHttpClient.this.H(hVar, new TimeoutException(), null, jVar, aVar);
                }
            };
            hVar.f53206h = runnable;
            hVar.f53205g = this.f53171e.E(runnable, y(jVar));
        }
        c0647g.f53280c = new a(jVar, hVar, aVar, c0647g, i10);
        I(jVar);
        if (jVar.e() != null && jVar.h().c(HttpHeaders.CONTENT_TYPE) == null) {
            jVar.h().f(HttpHeaders.CONTENT_TYPE, jVar.e().l());
        }
        Iterator it2 = this.f53167a.iterator();
        while (it2.hasNext()) {
            com.transsion.transfer.androidasync.future.a aVarE = ((com.transsion.transfer.androidasync.http.g) it2.next()).e(c0647g);
            if (aVarE != null) {
                c0647g.f53281d = aVarE;
                hVar.setParent(aVarE);
                return;
            }
        }
        H(hVar, new IllegalArgumentException("invalid uri=" + jVar.p() + " middlewares=" + this.f53167a), null, jVar, aVar);
    }

    public void u(com.transsion.transfer.androidasync.http.j jVar, int i10, h hVar, ut.a aVar, com.transsion.transfer.androidasync.http.g.C0647g c0647g) {
        b bVar = new b(jVar, hVar, jVar, aVar, c0647g, i10);
        c0647g.f53286h = new c(bVar);
        c0647g.f53287i = new d(bVar);
        c0647g.f53285g = bVar;
        bVar.S(c0647g.f53284f);
        Iterator it = this.f53167a.iterator();
        while (it.hasNext() && !((com.transsion.transfer.androidasync.http.g) it.next()).f(c0647g)) {
        }
    }

    public static AsyncHttpClient w() {
        if (f53166f == null) {
            f53166f = new AsyncHttpClient(AsyncServer.r());
        }
        return f53166f;
    }

    public static long y(com.transsion.transfer.androidasync.http.j jVar) {
        return jVar.o();
    }

    public com.transsion.transfer.androidasync.future.f J(com.transsion.transfer.androidasync.http.j jVar, String str, k kVar) {
        return K(jVar, str != null ? new String[]{str} : null, kVar);
    }

    public com.transsion.transfer.androidasync.future.f K(final com.transsion.transfer.androidasync.http.j jVar, String[] strArr, final k kVar) {
        f0.E(jVar, strArr);
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        wVar.setParent(p(jVar, new ut.a() {
            @Override
            public final void a(Exception exc, k kVar2) {
                AsyncHttpClient.G(wVar, kVar, jVar, exc, kVar2);
            }
        }));
        return wVar;
    }

    public com.transsion.transfer.androidasync.future.f L(String str, String str2, k kVar) {
        return J(new com.transsion.transfer.androidasync.http.h(str.replace("ws://", "http://").replace("wss://", "https://")), str2, kVar);
    }

    public com.transsion.transfer.androidasync.future.f p(com.transsion.transfer.androidasync.http.j jVar, ut.a aVar) {
        h hVar = new h();
        r(jVar, 0, hVar, aVar);
        return hVar;
    }

    public com.transsion.transfer.androidasync.future.w q(com.transsion.transfer.androidasync.http.j jVar, final wt.a aVar, final ut.b bVar) {
        h hVar = new h();
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        r(jVar, 0, hVar, new ut.a() {
            @Override
            public final void a(Exception exc, k kVar) {
                this.f53238a.F(bVar, wVar, aVar, exc, kVar);
            }
        });
        wVar.setParent(hVar);
        return wVar;
    }

    public com.transsion.transfer.androidasync.future.f t(com.transsion.transfer.androidasync.http.j jVar, String str, g gVar) {
        File file = new File(str);
        file.getParentFile().mkdirs();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), 8192);
            h hVar = new h();
            e eVar = new e(hVar, bufferedOutputStream, file);
            eVar.setParent(hVar);
            r(jVar, 0, hVar, new f(bufferedOutputStream, file, gVar, eVar));
            return eVar;
        } catch (FileNotFoundException e10) {
            com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
            wVar.G(e10);
            return wVar;
        }
    }

    public com.transsion.transfer.androidasync.future.f v(com.transsion.transfer.androidasync.http.j jVar, j jVar2) {
        return q(jVar, new wt.f(), jVar2);
    }

    public AsyncServer x() {
        return this.f53171e;
    }

    public void z(com.transsion.transfer.androidasync.http.g gVar) {
        this.f53167a.add(0, gVar);
    }
}
