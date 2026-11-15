package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class qk0 implements uk0, r11, ue2, cp1 {
    private final a a;
    private final s4 b;
    private final sk0 c;
    private final Context d;
    private List<ey1> e;
    private t4 f;

    public interface a {
        void a(t4 t4Var);
    }

    public qk0(Context context, a aVar, tk0 tk0Var, s4 s4Var, sk0 sk0Var) {
        y45.j(context, "context");
        y45.j(aVar, "impressionListener");
        y45.j(tk0Var, "impressionReporter");
        y45.j(s4Var, "adIdStorageManager");
        y45.j(sk0Var, "impressionReportController");
        this.a = aVar;
        this.b = s4Var;
        this.c = sk0Var;
        this.d = context.getApplicationContext();
    }

    private final boolean i() {
        List<ey1> list = this.e;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public final void a(List<ey1> list, t4 t4Var) {
        y45.j(list, "showNotices");
        this.e = list;
        this.f = t4Var;
        this.c.a();
    }

    @Override
    public final void b() {
        if (i()) {
            return;
        }
        this.c.c();
        if (a()) {
            this.b.a();
            this.a.a(this.f);
        }
    }

    @Override
    public final void c() {
        if (!i() || a()) {
            return;
        }
        this.b.a();
        this.a.a(this.f);
    }

    @Override
    public final void d() {
        if (i()) {
            return;
        }
        this.c.b();
        if (a()) {
            return;
        }
        this.b.a();
        this.a.a(this.f);
    }

    @Override
    public final void e() {
        if (i()) {
            return;
        }
        this.c.b();
        if (a()) {
            return;
        }
        this.b.a();
        this.a.a(this.f);
    }

    @Override
    public final void f() {
    }

    @Override
    public final void g() {
        if (i() && a()) {
            this.b.a();
            this.a.a(this.f);
        }
    }

    @Override
    public final void h() {
        if (i()) {
            return;
        }
        this.c.c();
        if (a()) {
            this.b.a();
            this.a.a(this.f);
        }
    }

    private final boolean a() {
        int i = pw1.l;
        pw1 pw1VarA = pw1.a.a();
        Context context = this.d;
        y45.i(context, "context");
        ju1 ju1VarA = pw1VarA.a(context);
        return ju1VarA == null || ju1VarA.b0();
    }
}
