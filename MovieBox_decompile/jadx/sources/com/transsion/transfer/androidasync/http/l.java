package com.transsion.transfer.androidasync.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.AsyncServer;
import com.transsion.transfer.androidasync.ByteBufferList;
import java.nio.charset.Charset;

abstract class l extends com.transsion.transfer.androidasync.t implements com.transsion.transfer.androidasync.p, k, g.i {

    private j f53305h;

    private com.transsion.transfer.androidasync.j f53306i;

    protected Headers f53307j;

    int f53309l;

    String f53310m;

    String f53311n;

    com.transsion.transfer.androidasync.s f53313p;

    private st.a f53304g = new b();

    boolean f53308k = false;

    private boolean f53312o = true;

    class a implements st.a {
        a() {
        }

        @Override
        public void g(Exception exc) {
            l.this.R(exc);
        }
    }

    class b implements st.a {
        b() {
        }

        @Override
        public void g(Exception exc) {
            if (l.this.e() == null) {
                l.this.M(new ConnectionClosedException("connection closed before headers received.", exc));
                return;
            }
            if (exc != null) {
                l lVar = l.this;
                if (!lVar.f53308k) {
                    lVar.M(new ConnectionClosedException("connection closed before response completed.", exc));
                    return;
                }
            }
            l.this.M(exc);
        }
    }

    class c extends st.d.a {
        c() {
        }

        @Override
        public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            super.C(pVar, byteBufferList);
            l.this.f53306i.close();
        }
    }

    public l(j jVar) {
        this.f53305h = jVar;
    }

    private void T() {
        this.f53306i.F(new c());
    }

    @Override
    public com.transsion.transfer.androidasync.s E() {
        return this.f53313p;
    }

    @Override
    public void M(Exception exc) {
        super.M(exc);
        T();
        this.f53306i.B(null);
        this.f53306i.i(null);
        this.f53306i.h(null);
        this.f53308k = true;
    }

    protected void P() {
    }

    protected void Q() {
        tt.a aVarE = this.f53305h.e();
        if (aVarE != null) {
            aVarE.J(this.f53305h, this.f53313p, new a());
        } else {
            R(null);
        }
    }

    protected abstract void R(Exception exc);

    void S(com.transsion.transfer.androidasync.j jVar) {
        this.f53306i = jVar;
        if (jVar == null) {
            return;
        }
        jVar.h(this.f53304g);
    }

    @Override
    public AsyncServer a() {
        return this.f53306i.a();
    }

    @Override
    public int b() {
        return this.f53309l;
    }

    @Override
    public g.i c(int i10) {
        this.f53309l = i10;
        return this;
    }

    @Override
    public void close() {
        super.close();
        T();
    }

    @Override
    public Headers e() {
        return this.f53307j;
    }

    @Override
    public g.i f(com.transsion.transfer.androidasync.s sVar) {
        this.f53313p = sVar;
        return this;
    }

    @Override
    public g.i m(String str) {
        this.f53310m = str;
        return this;
    }

    @Override
    public g.i o(com.transsion.transfer.androidasync.p pVar) {
        N(pVar);
        return this;
    }

    @Override
    public String protocol() {
        return this.f53310m;
    }

    @Override
    public g.i r(String str) {
        this.f53311n = str;
        return this;
    }

    @Override
    public String s() {
        String string;
        Multimap semicolonDelimited = Multimap.parseSemicolonDelimited(e().c(HttpHeaders.CONTENT_TYPE));
        if (semicolonDelimited == null || (string = semicolonDelimited.getString("charset")) == null || !Charset.isSupported(string)) {
            return null;
        }
        return string;
    }

    @Override
    public com.transsion.transfer.androidasync.j socket() {
        return this.f53306i;
    }

    public String toString() {
        Headers headers = this.f53307j;
        if (headers == null) {
            return super.toString();
        }
        return headers.g(this.f53310m + " " + this.f53309l + " " + this.f53311n);
    }

    @Override
    public g.i v(Headers headers) {
        this.f53307j = headers;
        return this;
    }
}
