package com.transsion.transfer.androidasync.http.server;

import android.util.Log;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.HttpUtil;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.b0;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;

public class AsyncHttpServer extends n {

    private static Hashtable f53349h;

    ArrayList f53350e = new ArrayList();

    st.f f53351f = new AnonymousClass1();

    st.a f53352g;

    class AnonymousClass1 implements st.f {

        class C06501 extends n.a {
            final st.i A;
            final com.transsion.transfer.androidasync.j B;

            n.a f53354q;

            q f53355r;

            String f53356s;

            String f53357t;

            boolean f53358u;

            boolean f53359v;

            k f53360w;

            boolean f53361x;

            boolean f53362y;

            final Runnable f53363z;

            class a implements st.i {
                a() {
                }
            }

            class b implements st.a {
                b() {
                }

                @Override
                public void g(Exception exc) {
                    C06501.this.resume();
                    if (exc != null) {
                        C06501.this.M(exc);
                        return;
                    }
                    C06501 c06501 = C06501.this;
                    c06501.f53361x = true;
                    c06501.V();
                }
            }

            class c extends k {
                c(com.transsion.transfer.androidasync.j jVar, com.transsion.transfer.androidasync.http.server.c cVar) {
                    super(jVar, cVar);
                }

                @Override
                protected void E() {
                    C06501.this.f53358u = true;
                    super.E();
                    this.f53392d.h(null);
                    AsyncHttpServer.this.r(o(), C06501.this.f53360w);
                    C06501.this.b0();
                }

                @Override
                protected void F(Exception exc) {
                    super.F(exc);
                    if (exc != null) {
                        C06501.this.B.F(new st.d.a());
                        C06501.this.B.h(new st.a.C0886a());
                        C06501.this.B.close();
                    }
                }
            }

            class d extends st.d.a {
                d() {
                }

                @Override
                public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
                    super.C(pVar, byteBufferList);
                    C06501.this.f53370i.close();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C06501(com.transsion.transfer.androidasync.j jVar) {
                super();
                this.B = jVar;
                this.f53354q = this;
                this.f53363z = new Runnable() {
                    @Override
                    public void run() {
                    }
                };
                this.A = new a();
            }

            public void b0() {
                if (this.f53359v && this.f53358u && !AsyncHttpServer.this.n(this.f53360w)) {
                    if (AsyncHttpServer.this.m(this.f53354q, this.f53360w)) {
                        AnonymousClass1.this.t(this.B);
                    } else {
                        this.B.close();
                    }
                }
            }

            @Override
            protected tt.a U(Headers headers) {
                String[] strArrSplit = T().split(" ");
                String str = strArrSplit[1];
                this.f53356s = str;
                String strDecode = URLDecoder.decode(str.split("\\?")[0]);
                this.f53357t = strDecode;
                String str2 = strArrSplit[0];
                this.f53374m = str2;
                n.d dVarA = AsyncHttpServer.this.a(str2, strDecode);
                if (dVarA == null) {
                    return null;
                }
                this.f53408o = dVarA.f53416c;
                this.f53355r = dVarA.f53417d;
                return null;
            }

            @Override
            protected void V() {
                Headers headers = getHeaders();
                if (!this.f53361x && "100-continue".equals(headers.c("Expect"))) {
                    pause();
                    a0.h(this.f53370i, "HTTP/1.1 100 Continue\r\n\r\n".getBytes(), new b());
                    return;
                }
                c cVar = new c(this.B, this);
                this.f53360w = cVar;
                boolean zQ = AsyncHttpServer.this.q(this, cVar);
                this.f53362y = zQ;
                if (zQ) {
                    return;
                }
                if (this.f53355r == null) {
                    this.f53360w.c(TTAdConstant.DEEPLINK_FALLBACK_CODE);
                    this.f53360w.d();
                } else if (!z().K() || this.f53359v) {
                    c0();
                }
            }

            @Override
            protected tt.a X(Headers headers) {
                return AsyncHttpServer.this.s(headers);
            }

            void c0() {
                AsyncHttpServer.this.p(this.f53355r, this, this.f53360w);
            }

            @Override
            public void g(Exception exc) {
                if (AsyncHttpServer.this.n(this.f53360w)) {
                    return;
                }
                this.f53359v = true;
                super.g(exc);
                this.f53370i.F(new d());
                if (exc != null) {
                    this.f53370i.close();
                    return;
                }
                b0();
                if (!z().K() || this.f53362y) {
                    return;
                }
                c0();
            }

            @Override
            public String getPath() {
                return this.f53357t;
            }

            @Override
            public Multimap j() {
                String[] strArrSplit = this.f53356s.split("\\?", 2);
                return strArrSplit.length < 2 ? new Multimap() : Multimap.parseQuery(strArrSplit[1]);
            }
        }

        AnonymousClass1() {
        }

        @Override
        public void g(Exception exc) {
            AsyncHttpServer.this.t(exc);
        }

        @Override
        public void p(com.transsion.transfer.androidasync.i iVar) {
            AsyncHttpServer.this.f53350e.add(iVar);
        }

        @Override
        public void t(com.transsion.transfer.androidasync.j jVar) {
            new C06501(jVar).Y(jVar);
            jVar.resume();
        }
    }

    public interface a {
        void a(b0 b0Var, b bVar);
    }

    static {
        Hashtable hashtable = new Hashtable();
        f53349h = hashtable;
        hashtable.put(200, "OK");
        f53349h.put(Integer.valueOf(Sdk$SDKError.Reason.AD_CONSUMED_VALUE), "Accepted");
        f53349h.put(Integer.valueOf(Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE), "Partial Content");
        f53349h.put(101, "Switching Protocols");
        f53349h.put(Integer.valueOf(Sdk$SDKError.Reason.MRAID_ERROR_VALUE), "Moved Permanently");
        f53349h.put(Integer.valueOf(Sdk$SDKError.Reason.INVALID_IFA_STATUS_VALUE), "Found");
        f53349h.put(Integer.valueOf(Sdk$SDKError.Reason.AD_EXPIRED_VALUE), "Not Modified");
        f53349h.put(400, "Bad Request");
        f53349h.put(401, "Unauthorized");
        f53349h.put(Integer.valueOf(TTAdConstant.DEEPLINK_FALLBACK_CODE), "Not Found");
        f53349h.put(500, "Internal Server Error");
    }

    public static String l(int i10) {
        String str = (String) f53349h.get(Integer.valueOf(i10));
        return str == null ? "Unknown" : str;
    }

    public void t(Exception exc) {
        st.a aVar = this.f53352g;
        if (aVar != null) {
            aVar.g(exc);
        }
    }

    protected boolean m(b bVar, d dVar) {
        return HttpUtil.e(dVar.A(), bVar.getHeaders());
    }

    protected boolean n(d dVar) {
        return dVar.b() == 101;
    }

    public com.transsion.transfer.androidasync.i o(AsyncServer asyncServer, int i10) {
        return asyncServer.y(null, i10, this.f53351f);
    }

    protected void p(q qVar, b bVar, d dVar) {
        if (qVar != null) {
            try {
                qVar.b(bVar, dVar);
            } catch (Exception e10) {
                Log.e("AsyncHttpServer", "request callback raised uncaught exception. Catching versus crashing process", e10);
                dVar.c(500);
                dVar.d();
            }
        }
    }

    protected boolean q(b bVar, d dVar) {
        return false;
    }

    protected void r(b bVar, d dVar) {
    }

    protected tt.a s(Headers headers) {
        return new s(headers.c(HttpHeaders.CONTENT_TYPE));
    }

    public void u() {
        ArrayList arrayList = this.f53350e;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.transfer.androidasync.i) it.next()).stop();
            }
        }
    }
}
