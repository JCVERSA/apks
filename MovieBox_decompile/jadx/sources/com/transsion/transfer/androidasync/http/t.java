package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.util.ArrayDeque;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Hashtable;
import java.util.Locale;

public class t extends a0 {

    String f53423a;

    int f53424b;

    int f53425c;

    protected AsyncHttpClient f53426d;

    boolean f53427e;

    String f53428f;

    int f53429g;

    Hashtable f53430h;

    int f53431i;

    class a implements st.a {

        final ArrayDeque f53432a;

        final e f53433b;

        final String f53434c;

        a(ArrayDeque arrayDeque, e eVar, String str) {
            this.f53432a = arrayDeque;
            this.f53433b = eVar;
            this.f53434c = str;
        }

        @Override
        public void g(Exception exc) {
            synchronized (t.this) {
                this.f53432a.remove(this.f53433b);
                t.this.w(this.f53434c);
            }
        }
    }

    class b implements st.a {

        final com.transsion.transfer.androidasync.j f53436a;

        b(com.transsion.transfer.androidasync.j jVar) {
            this.f53436a = jVar;
        }

        @Override
        public void g(Exception exc) {
            this.f53436a.i(null);
            this.f53436a.close();
        }
    }

    class c extends st.d.a {

        final com.transsion.transfer.androidasync.j f53438a;

        c(com.transsion.transfer.androidasync.j jVar) {
            this.f53438a = jVar;
        }

        @Override
        public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            super.C(pVar, byteBufferList);
            byteBufferList.B();
            this.f53438a.i(null);
            this.f53438a.close();
        }
    }

    static class d {

        int f53440a;

        ArrayDeque f53441b = new ArrayDeque();

        ArrayDeque f53442c = new ArrayDeque();

        d() {
        }
    }

    class e {

        com.transsion.transfer.androidasync.j f53443a;

        long f53444b = System.currentTimeMillis();

        public e(com.transsion.transfer.androidasync.j jVar) {
            this.f53443a = jVar;
        }
    }

    public t(AsyncHttpClient asyncHttpClient, String str, int i10) {
        this.f53425c = 300000;
        this.f53430h = new Hashtable();
        this.f53431i = Integer.MAX_VALUE;
        this.f53426d = asyncHttpClient;
        this.f53423a = str;
        this.f53424b = i10;
    }

    private d o(String str) {
        d dVar = (d) this.f53430h.get(str);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d();
        this.f53430h.put(str, dVar2);
        return dVar2;
    }

    private void q(com.transsion.transfer.androidasync.j jVar) {
        jVar.h(new b(jVar));
        jVar.B(null);
        jVar.F(new c(jVar));
    }

    public com.transsion.transfer.androidasync.future.f s(int i10, g.a aVar, InetAddress inetAddress) {
        final com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
        String str = String.format(Locale.ENGLISH, "%s:%s", inetAddress, Integer.valueOf(i10));
        aVar.f53289b.u("attempting connection to " + str);
        this.f53426d.x().n(new InetSocketAddress(inetAddress, i10), new st.b() {
            @Override
            public final void a(Exception exc, com.transsion.transfer.androidasync.j jVar) {
                wVar.H(exc, jVar);
            }
        });
        return wVar;
    }

    public com.transsion.transfer.androidasync.future.f t(final int i10, final g.a aVar, InetAddress[] inetAddressArr) {
        return com.transsion.transfer.androidasync.future.l.d(inetAddressArr, new com.transsion.transfer.androidasync.future.z() {
            @Override
            public final com.transsion.transfer.androidasync.future.f then(Object obj) {
                return this.f53345a.s(i10, aVar, (InetAddress) obj);
            }
        });
    }

    public void u(g.a aVar, Uri uri, int i10, Exception exc) {
        z(aVar, uri, i10, false, aVar.f53280c).a(exc, null);
    }

    public void v(g.a aVar, Uri uri, int i10, Exception exc, com.transsion.transfer.androidasync.j jVar) {
        if (jVar == null) {
            return;
        }
        if (exc == null) {
            z(aVar, uri, i10, false, aVar.f53280c).a(null, jVar);
            return;
        }
        aVar.f53289b.r("Recycling extra socket leftover from cancelled operation");
        q(jVar);
        y(jVar, aVar.f53289b);
    }

    public void w(String str) {
        d dVar = (d) this.f53430h.get(str);
        if (dVar == null) {
            return;
        }
        while (!dVar.f53442c.isEmpty()) {
            e eVar = (e) dVar.f53442c.peekLast();
            com.transsion.transfer.androidasync.j jVar = eVar.f53443a;
            if (eVar.f53444b + ((long) this.f53425c) > System.currentTimeMillis()) {
                break;
            }
            dVar.f53442c.pop();
            jVar.i(null);
            jVar.close();
        }
        if (dVar.f53440a == 0 && dVar.f53441b.isEmpty() && dVar.f53442c.isEmpty()) {
            this.f53430h.remove(str);
        }
    }

    private void x(j jVar) {
        Uri uriP = jVar.p();
        String strN = n(uriP, p(uriP), jVar.l(), jVar.m());
        synchronized (this) {
            try {
                d dVar = (d) this.f53430h.get(strN);
                if (dVar == null) {
                    return;
                }
                dVar.f53440a--;
                while (dVar.f53440a < this.f53431i && dVar.f53441b.size() > 0) {
                    g.a aVar = (g.a) dVar.f53441b.remove();
                    com.transsion.transfer.androidasync.future.n nVar = (com.transsion.transfer.androidasync.future.n) aVar.f53281d;
                    if (!nVar.isCancelled()) {
                        nVar.setParent(e(aVar));
                    }
                }
                w(strN);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void y(com.transsion.transfer.androidasync.j jVar, j jVar2) {
        ArrayDeque arrayDeque;
        if (jVar == null) {
            return;
        }
        Uri uriP = jVar2.p();
        String strN = n(uriP, p(uriP), jVar2.l(), jVar2.m());
        e eVar = new e(jVar);
        synchronized (this) {
            arrayDeque = o(strN).f53442c;
            arrayDeque.push(eVar);
        }
        jVar.i(new a(arrayDeque, eVar, strN));
    }

    @Override
    public void b(g.C0647g c0647g) {
        if (c0647g.f53288a.a("socket-owner") != this) {
            return;
        }
        try {
            q(c0647g.f53284f);
            if (c0647g.f53290k != null || !c0647g.f53284f.isOpen()) {
                c0647g.f53289b.u("closing out socket (exception)");
                c0647g.f53284f.i(null);
                c0647g.f53284f.close();
            } else if (r(c0647g)) {
                c0647g.f53289b.r("Recycling keep-alive socket");
                y(c0647g.f53284f, c0647g.f53289b);
            } else {
                c0647g.f53289b.u("closing out socket (not keep alive)");
                c0647g.f53284f.i(null);
                c0647g.f53284f.close();
            }
        } finally {
            x(c0647g.f53289b);
        }
    }

    @Override
    public com.transsion.transfer.androidasync.future.a e(final g.a aVar) {
        String host;
        int iM;
        String str;
        final Uri uriP = aVar.f53289b.p();
        final int iP = p(aVar.f53289b.p());
        if (iP == -1) {
            return null;
        }
        aVar.f53288a.b("socket-owner", this);
        d dVarO = o(n(uriP, iP, aVar.f53289b.l(), aVar.f53289b.m()));
        synchronized (this) {
            try {
                int i10 = dVarO.f53440a;
                if (i10 >= this.f53431i) {
                    com.transsion.transfer.androidasync.future.n nVar = new com.transsion.transfer.androidasync.future.n();
                    dVarO.f53441b.add(aVar);
                    return nVar;
                }
                boolean z10 = true;
                dVarO.f53440a = i10 + 1;
                while (!dVarO.f53442c.isEmpty()) {
                    e eVar = (e) dVarO.f53442c.pop();
                    com.transsion.transfer.androidasync.j jVar = eVar.f53443a;
                    if (eVar.f53444b + ((long) this.f53425c) < System.currentTimeMillis()) {
                        jVar.i(null);
                        jVar.close();
                    } else if (jVar.isOpen()) {
                        aVar.f53289b.r("Reusing keep-alive socket");
                        aVar.f53280c.a(null, jVar);
                        com.transsion.transfer.androidasync.future.n nVar2 = new com.transsion.transfer.androidasync.future.n();
                        nVar2.setComplete();
                        return nVar2;
                    }
                }
                if (this.f53427e && this.f53428f == null && aVar.f53289b.l() == null) {
                    aVar.f53289b.u("Resolving domain and connecting to all available addresses");
                    com.transsion.transfer.androidasync.future.w wVar = new com.transsion.transfer.androidasync.future.w();
                    wVar.E(this.f53426d.x().p(uriP.getHost()).a(new com.transsion.transfer.androidasync.future.z() {
                        @Override
                        public final com.transsion.transfer.androidasync.future.f then(Object obj) {
                            return this.f53334a.t(iP, aVar, (InetAddress[]) obj);
                        }
                    }).e(new com.transsion.transfer.androidasync.future.d() {
                        @Override
                        public final void a(Exception exc) {
                            this.f53337a.u(aVar, uriP, iP, exc);
                        }
                    })).f(new com.transsion.transfer.androidasync.future.g() {
                        @Override
                        public final void a(Exception exc, Object obj) {
                            this.f53341a.v(aVar, uriP, iP, exc, (com.transsion.transfer.androidasync.j) obj);
                        }
                    });
                    return wVar;
                }
                aVar.f53289b.r("Connecting socket");
                if (aVar.f53289b.l() == null && (str = this.f53428f) != null) {
                    aVar.f53289b.d(str, this.f53429g);
                }
                if (aVar.f53289b.l() != null) {
                    host = aVar.f53289b.l();
                    iM = aVar.f53289b.m();
                } else {
                    host = uriP.getHost();
                    z10 = false;
                    iM = iP;
                }
                if (z10) {
                    aVar.f53289b.u("Using proxy: " + host + ":" + iM);
                }
                return this.f53426d.x().m(host, iM, z(aVar, uriP, iP, z10, aVar.f53280c));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    String n(Uri uri, int i10, String str, int i11) {
        String str2;
        if (str != null) {
            str2 = str + ":" + i11;
        } else {
            str2 = "";
        }
        if (str != null) {
            str2 = str + ":" + i11;
        }
        return uri.getScheme() + "//" + uri.getHost() + ":" + i10 + "?proxy=" + str2;
    }

    public int p(Uri uri) {
        if (uri.getScheme() == null || !uri.getScheme().equals(this.f53423a)) {
            return -1;
        }
        return uri.getPort() == -1 ? this.f53424b : uri.getPort();
    }

    protected boolean r(g.C0647g c0647g) {
        return HttpUtil.e(c0647g.f53285g.protocol(), c0647g.f53285g.e()) && HttpUtil.d(Protocol.HTTP_1_1, c0647g.f53289b.h());
    }

    protected st.b z(g.a aVar, Uri uri, int i10, boolean z10, st.b bVar) {
        return bVar;
    }

    public t(AsyncHttpClient asyncHttpClient) {
        this(asyncHttpClient, "http", 80);
    }
}
