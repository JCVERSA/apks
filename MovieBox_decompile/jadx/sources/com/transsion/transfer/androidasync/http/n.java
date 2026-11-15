package com.transsion.transfer.androidasync.http;

import android.net.Uri;
import android.text.TextUtils;
import com.transsion.transfer.androidasync.AsyncSSLSocketWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.TrustManager;

public class n extends t {

    protected SSLContext f53317j;

    protected TrustManager[] f53318k;

    protected HostnameVerifier f53319l;

    protected List f53320m;

    class a implements AsyncSSLSocketWrapper.g {

        final st.b f53321a;

        a(st.b bVar) {
            this.f53321a = bVar;
        }

        @Override
        public void a(Exception exc, com.transsion.transfer.androidasync.a aVar) {
            this.f53321a.a(exc, aVar);
        }
    }

    class b implements st.b {

        final st.b f53323a;

        final boolean f53324b;

        final g.a f53325c;

        final Uri f53326d;

        final int f53327e;

        class a implements st.a {

            final com.transsion.transfer.androidasync.j f53329a;

            class C0648a implements com.transsion.transfer.androidasync.v.a {

                String f53331a;

                C0648a() {
                }

                @Override
                public void a(String str) {
                    b.this.f53325c.f53289b.u(str);
                    if (this.f53331a != null) {
                        if (TextUtils.isEmpty(str.trim())) {
                            a.this.f53329a.F(null);
                            a.this.f53329a.h(null);
                            a aVar = a.this;
                            b bVar = b.this;
                            n.this.E(aVar.f53329a, bVar.f53325c, bVar.f53326d, bVar.f53327e, bVar.f53323a);
                            return;
                        }
                        return;
                    }
                    String strTrim = str.trim();
                    this.f53331a = strTrim;
                    if (strTrim.matches("HTTP/1.\\d 2\\d\\d .*")) {
                        return;
                    }
                    a.this.f53329a.F(null);
                    a.this.f53329a.h(null);
                    b.this.f53323a.a(new IOException("non 2xx status line: " + this.f53331a), a.this.f53329a);
                }
            }

            class C0649b implements st.a {
                C0649b() {
                }

                @Override
                public void g(Exception exc) {
                    if (!a.this.f53329a.isOpen() && exc == null) {
                        exc = new IOException("socket closed before proxy connect response");
                    }
                    a aVar = a.this;
                    b.this.f53323a.a(exc, aVar.f53329a);
                }
            }

            a(com.transsion.transfer.androidasync.j jVar) {
                this.f53329a = jVar;
            }

            @Override
            public void g(Exception exc) {
                if (exc != null) {
                    b.this.f53323a.a(exc, this.f53329a);
                    return;
                }
                com.transsion.transfer.androidasync.v vVar = new com.transsion.transfer.androidasync.v();
                vVar.a(new C0648a());
                this.f53329a.F(vVar);
                this.f53329a.h(new C0649b());
            }
        }

        b(st.b bVar, boolean z10, g.a aVar, Uri uri, int i10) {
            this.f53323a = bVar;
            this.f53324b = z10;
            this.f53325c = aVar;
            this.f53326d = uri;
            this.f53327e = i10;
        }

        @Override
        public void a(Exception exc, com.transsion.transfer.androidasync.j jVar) {
            if (exc != null) {
                this.f53323a.a(exc, jVar);
                return;
            }
            if (!this.f53324b) {
                n.this.E(jVar, this.f53325c, this.f53326d, this.f53327e, this.f53323a);
                return;
            }
            String str = String.format(Locale.ENGLISH, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n", this.f53326d.getHost(), Integer.valueOf(this.f53327e), this.f53326d.getHost());
            this.f53325c.f53289b.u("Proxying: " + str);
            com.transsion.transfer.androidasync.a0.h(jVar, str.getBytes(), new a(jVar));
        }
    }

    public n(AsyncHttpClient asyncHttpClient) {
        super(asyncHttpClient, "https", 443);
        this.f53320m = new ArrayList();
    }

    public void A(m mVar) {
        this.f53320m.add(mVar);
    }

    protected SSLEngine B(g.a aVar, String str, int i10) {
        SSLContext sSLContextD = D();
        Iterator it = this.f53320m.iterator();
        SSLEngine sSLEngineA = null;
        while (it.hasNext() && (sSLEngineA = ((m) it.next()).a(sSLContextD, str, i10)) == null) {
        }
        Iterator it2 = this.f53320m.iterator();
        while (it2.hasNext()) {
            ((m) it2.next()).b(sSLEngineA, aVar, str, i10);
        }
        return sSLEngineA;
    }

    protected AsyncSSLSocketWrapper.g C(g.a aVar, st.b bVar) {
        return new a(bVar);
    }

    public SSLContext D() {
        SSLContext sSLContext = this.f53317j;
        return sSLContext != null ? sSLContext : AsyncSSLSocketWrapper.p();
    }

    protected void E(com.transsion.transfer.androidasync.j jVar, g.a aVar, Uri uri, int i10, st.b bVar) {
        AsyncSSLSocketWrapper.v(jVar, uri.getHost(), i10, B(aVar, uri.getHost(), i10), this.f53318k, this.f53319l, true, C(aVar, bVar));
    }

    @Override
    protected st.b z(g.a aVar, Uri uri, int i10, boolean z10, st.b bVar) {
        return new b(bVar, z10, aVar, uri, i10);
    }
}
