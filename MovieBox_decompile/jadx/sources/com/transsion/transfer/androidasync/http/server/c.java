package com.transsion.transfer.androidasync.http.server;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.HttpUtil;
import com.transsion.transfer.androidasync.http.Protocol;
import com.transsion.transfer.androidasync.t;
import com.transsion.transfer.androidasync.v;
import java.io.IOException;
import java.util.HashMap;

public abstract class c extends t implements com.transsion.transfer.androidasync.http.server.b, st.a {

    private String f53368g;

    com.transsion.transfer.androidasync.j f53370i;

    String f53374m;

    tt.a f53375n;

    private Headers f53369h = new Headers();

    private HashMap f53371j = new HashMap();

    private st.a f53372k = new a();

    v.a f53373l = new b();

    class a implements st.a {
        a() {
        }

        @Override
        public void g(Exception exc) {
            c.this.g(exc);
        }
    }

    class b implements v.a {
        b() {
        }

        @Override
        public void a(String str) {
            if (c.this.f53368g == null) {
                c.this.f53368g = str;
                if (c.this.f53368g.contains("HTTP/")) {
                    return;
                }
                c.this.W();
                c.this.f53370i.F(new st.d.a());
                c.this.M(new IOException("data/header received was not not http"));
                return;
            }
            if (!"\r".equals(str)) {
                c.this.f53369h.b(str);
                return;
            }
            c cVar = c.this;
            com.transsion.transfer.androidasync.p pVarC = HttpUtil.c(cVar.f53370i, Protocol.HTTP_1_1, cVar.f53369h, true);
            c cVar2 = c.this;
            cVar2.f53375n = cVar2.U(cVar2.f53369h);
            c cVar3 = c.this;
            if (cVar3.f53375n == null) {
                cVar3.f53375n = HttpUtil.b(pVarC, cVar3.f53372k, c.this.f53369h);
                c cVar4 = c.this;
                if (cVar4.f53375n == null) {
                    cVar4.f53375n = cVar4.X(cVar4.f53369h);
                    c cVar5 = c.this;
                    if (cVar5.f53375n == null) {
                        cVar5.f53375n = new s(cVar5.f53369h.c(HttpHeaders.CONTENT_TYPE));
                    }
                }
            }
            c cVar6 = c.this;
            cVar6.f53375n.H(pVarC, cVar6.f53372k);
            c.this.V();
        }
    }

    @Override
    public void F(st.d dVar) {
        this.f53370i.F(dVar);
    }

    @Override
    public st.d G() {
        return this.f53370i.G();
    }

    public String T() {
        return this.f53368g;
    }

    protected tt.a U(Headers headers) {
        return null;
    }

    protected abstract void V();

    protected void W() {
        System.out.println("not http!");
    }

    protected tt.a X(Headers headers) {
        return null;
    }

    void Y(com.transsion.transfer.androidasync.j jVar) {
        this.f53370i = jVar;
        v vVar = new v();
        this.f53370i.F(vVar);
        vVar.a(this.f53373l);
        this.f53370i.h(new st.a.C0886a());
    }

    public void g(Exception exc) {
        M(exc);
    }

    @Override
    public Headers getHeaders() {
        return this.f53369h;
    }

    @Override
    public com.transsion.transfer.androidasync.j getSocket() {
        return this.f53370i;
    }

    @Override
    public boolean isPaused() {
        return this.f53370i.isPaused();
    }

    @Override
    public void pause() {
        this.f53370i.pause();
    }

    @Override
    public void resume() {
        this.f53370i.resume();
    }

    public String toString() {
        Headers headers = this.f53369h;
        return headers == null ? super.toString() : headers.g(this.f53368g);
    }

    @Override
    public String y() {
        return this.f53374m;
    }

    @Override
    public tt.a z() {
        return this.f53375n;
    }
}
