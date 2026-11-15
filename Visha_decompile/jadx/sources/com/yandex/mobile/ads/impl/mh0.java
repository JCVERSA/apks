package com.yandex.mobile.ads.impl;

import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Header;
import okio.Sink;
import okio.Source;

public final class mh0 implements c60 {
    private static final List<String> g = g92.a("connection", SerializableCookie.HOST, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", Header.TARGET_METHOD_UTF8, Header.TARGET_PATH_UTF8, Header.TARGET_SCHEME_UTF8, Header.TARGET_AUTHORITY_UTF8);
    private static final List<String> h = g92.a("connection", SerializableCookie.HOST, HttpHeaders.HEAD_VALUE_CONNECTION_KEEP_ALIVE, "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");
    private final ao1 a;
    private final do1 b;
    private final hh0 c;
    private volatile oh0 d;
    private final mm1 e;
    private volatile boolean f;

    public static final class a {
        public static vq1.a a(qf0 qf0Var, mm1 mm1Var) throws IOException {
            y45.j(qf0Var, "headerBlock");
            y45.j(mm1Var, "protocol");
            qf0.a aVar = new qf0.a();
            int size = qf0Var.size();
            t22 t22VarA = null;
            for (int i = 0; i < size; i++) {
                String strA = qf0Var.a(i);
                String strB = qf0Var.b(i);
                if (y45.e(strA, Header.RESPONSE_STATUS_UTF8)) {
                    t22VarA = t22.a.a("HTTP/1.1 " + strB);
                } else if (!mh0.h.contains(strA)) {
                    aVar.a(strA, strB);
                }
            }
            if (t22VarA != null) {
                return new vq1.a().a(mm1Var).a(t22VarA.b).a(t22VarA.c).a(aVar.a());
            }
            throw new ProtocolException("Expected ':status' header not present");
        }
    }

    public mh0(fe1 fe1Var, ao1 ao1Var, do1 do1Var, hh0 hh0Var) {
        y45.j(fe1Var, "client");
        y45.j(ao1Var, "connection");
        y45.j(do1Var, "chain");
        y45.j(hh0Var, "http2Connection");
        this.a = ao1Var;
        this.b = do1Var;
        this.c = hh0Var;
        List<mm1> listR = fe1Var.r();
        mm1 mm1Var = mm1.h;
        this.e = listR.contains(mm1Var) ? mm1Var : mm1.g;
    }

    @Override
    public final Sink a(vp1 vp1Var, long j) {
        y45.j(vp1Var, Progress.REQUEST);
        oh0 oh0Var = this.d;
        y45.g(oh0Var);
        return oh0Var.j();
    }

    @Override
    public final void b() throws IOException {
        this.c.flush();
    }

    @Override
    public final ao1 c() {
        return this.a;
    }

    @Override
    public final void cancel() {
        this.f = true;
        oh0 oh0Var = this.d;
        if (oh0Var != null) {
            oh0Var.a(t50.i);
        }
    }

    @Override
    public final long b(vq1 vq1Var) {
        y45.j(vq1Var, "response");
        if (xh0.a(vq1Var)) {
            return g92.a(vq1Var);
        }
        return 0L;
    }

    @Override
    public final void a() throws IOException {
        oh0 oh0Var = this.d;
        y45.g(oh0Var);
        oh0Var.j().close();
    }

    @Override
    public final Source a(vq1 vq1Var) {
        y45.j(vq1Var, "response");
        oh0 oh0Var = this.d;
        y45.g(oh0Var);
        return oh0Var.l();
    }

    @Override
    public final vq1.a a(boolean z) throws IOException {
        oh0 oh0Var = this.d;
        y45.g(oh0Var);
        vq1.a aVarA = a.a(oh0Var.s(), this.e);
        if (z && aVarA.b() == 100) {
            return null;
        }
        return aVarA;
    }

    @Override
    public final void a(vp1 vp1Var) throws IOException {
        y45.j(vp1Var, Progress.REQUEST);
        if (this.d != null) {
            return;
        }
        boolean z = vp1Var.a() != null;
        y45.j(vp1Var, Progress.REQUEST);
        qf0 qf0VarD = vp1Var.d();
        ArrayList arrayList = new ArrayList(qf0VarD.size() + 4);
        arrayList.add(new lf0(lf0.f, vp1Var.f()));
        arrayList.add(new lf0(lf0.g, cq1.a(vp1Var.g())));
        String strA = vp1Var.a("Host");
        if (strA != null) {
            arrayList.add(new lf0(lf0.i, strA));
        }
        arrayList.add(new lf0(lf0.h, vp1Var.g().k()));
        int size = qf0VarD.size();
        for (int i = 0; i < size; i++) {
            String strA2 = qf0VarD.a(i);
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = strA2.toLowerCase(locale);
            y45.i(lowerCase, "toLowerCase(...)");
            if (!g.contains(lowerCase) || (y45.e(lowerCase, "te") && y45.e(qf0VarD.b(i), "trailers"))) {
                arrayList.add(new lf0(lowerCase, qf0VarD.b(i)));
            }
        }
        this.d = this.c.a(arrayList, z);
        if (!this.f) {
            oh0 oh0Var = this.d;
            y45.g(oh0Var);
            oh0.c cVarR = oh0Var.r();
            long jE = this.b.e();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            cVarR.timeout(jE, timeUnit);
            oh0 oh0Var2 = this.d;
            y45.g(oh0Var2);
            oh0Var2.u().timeout(this.b.g(), timeUnit);
            return;
        }
        oh0 oh0Var3 = this.d;
        y45.g(oh0Var3);
        oh0Var3.a(t50.i);
        throw new IOException("Canceled");
    }
}
