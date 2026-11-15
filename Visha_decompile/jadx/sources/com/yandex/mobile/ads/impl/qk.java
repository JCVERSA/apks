package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public abstract class qk<T> extends up1<T> {
    private static final int w = (int) TimeUnit.SECONDS.toMillis(10);
    private final Context s;
    private final a<T> t;
    private final eq1 u;
    private final mq1 v;

    public interface a<T> extends xq1.b<T>, xq1.a {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qk(Context context, int i, String str, a<T> aVar, eq1 eq1Var) {
        super(i, str, aVar);
        y45.j(context, "context");
        y45.j(str, "url");
        y45.j(aVar, "listener");
        this.s = context;
        this.t = aVar;
        this.u = eq1Var;
        q();
        a(new m00(1.0f, w, 0));
        this.v = mq1.b;
    }

    public final void a(Integer num) {
        Context context = this.s;
        y45.j(context, "context");
        int i = n2.e;
        n2.a.a(context).a(w(), num);
    }

    @Override
    public si2 b(si2 si2Var) {
        y45.j(si2Var, "volleyError");
        xc1 xc1Var = si2Var.b;
        a(xc1Var != null ? Integer.valueOf(xc1Var.a) : null);
        y45.i(si2Var, "parseNetworkError(...)");
        return si2Var;
    }

    public mq1 w() {
        return this.v;
    }

    public final void x() {
        eq1 eq1Var = this.u;
        if (eq1Var != null) {
            eq1Var.b();
        }
    }

    @Override
    public final void a(T t) {
        this.t.a(t);
    }

    public final void a(Map<String, String> map) {
        y45.j(map, "headers");
        String strA = nf0.a(map, vh0.c0);
        if (strA != null) {
            ox1.a aVar = ox1.a;
            Context context = this.s;
            aVar.getClass();
            ox1.a.a(context).a(strA);
        }
    }

    public qk(Context context, String str, a aVar) {
        this(context, 0, str, aVar, null);
    }
}
