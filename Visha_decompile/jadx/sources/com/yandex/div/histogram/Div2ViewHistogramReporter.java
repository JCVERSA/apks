package com.yandex.div.histogram;

import android.os.SystemClock;
import defpackage.ae5;
import defpackage.c74;
import defpackage.fs8;
import defpackage.is8;
import defpackage.rq4;
import defpackage.xi;
import defpackage.y45;
import defpackage.yi5;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;

public final class Div2ViewHistogramReporter {
    public final c74 a;
    public final c74 b;
    public String c;
    public boolean d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;
    public final yi5 l;

    public Div2ViewHistogramReporter(c74 c74Var, c74 c74Var2) {
        y45.j(c74Var, "histogramReporter");
        y45.j(c74Var2, "renderConfig");
        this.a = c74Var;
        this.b = c74Var2;
        this.l = b.b(LazyThreadSafetyMode.NONE, Div2ViewHistogramReporter$renderMetrics$2.INSTANCE);
    }

    public final String c() {
        return this.c;
    }

    public final long d() {
        return SystemClock.uptimeMillis();
    }

    public final is8 e() {
        return (is8) this.l.getValue();
    }

    public final void f() {
        String str;
        long jD;
        Long l = this.e;
        Long l2 = this.f;
        Long l3 = this.g;
        is8 is8VarE = e();
        if (l == null) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                str = "start time of Div.Binding is null";
                xi.i(str);
            }
        } else {
            if (l2 != null && l3 != null) {
                jD = ((d() - l3.longValue()) + l2.longValue()) - l.longValue();
            } else if (l2 == null && l3 == null) {
                jD = d() - l.longValue();
            } else {
                ae5 ae5Var2 = ae5.a;
                if (xi.o()) {
                    str = "when Div.Binding has paused time it should have resumed time and otherwise";
                    xi.i(str);
                }
            }
            is8VarE.d(jD);
            rq4.b((rq4) this.a.invoke(), "Div.Binding", jD, c(), null, null, 24, null);
        }
        this.e = null;
        this.f = null;
        this.g = null;
    }

    public final void g() {
        this.f = Long.valueOf(d());
    }

    public final void h() {
        this.g = Long.valueOf(d());
    }

    public final void i() {
        this.e = Long.valueOf(d());
    }

    public final void j() {
        Long l = this.k;
        if (l != null) {
            e().a(v(l.longValue()));
        }
        if (this.d) {
            s(e());
        }
        t();
    }

    public final void k() {
        this.k = Long.valueOf(d());
    }

    public final void l() {
        Long l = this.j;
        if (l != null) {
            e().b(v(l.longValue()));
        }
    }

    public final void m() {
        this.j = Long.valueOf(d());
    }

    public final void n() {
        Long l = this.i;
        if (l != null) {
            e().c(v(l.longValue()));
        }
    }

    public final void o() {
        this.i = Long.valueOf(d());
    }

    public final void p() {
        Long l = this.h;
        is8 is8VarE = e();
        if (l == null) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("start time of Div.Rebinding is null");
            }
        } else {
            long jD = d() - l.longValue();
            is8VarE.i(jD);
            rq4.b((rq4) this.a.invoke(), "Div.Rebinding", jD, c(), null, null, 24, null);
        }
        this.h = null;
    }

    public final void q() {
        this.h = Long.valueOf(d());
    }

    public final void r() {
        this.d = true;
    }

    public final void s(is8 is8Var) {
        rq4 rq4Var = (rq4) this.a.invoke();
        fs8 fs8Var = (fs8) this.b.invoke();
        rq4.b(rq4Var, "Div.Render.Total", is8Var.h(), this.c, null, fs8Var.d(), 8, null);
        rq4.b(rq4Var, "Div.Render.Measure", is8Var.g(), this.c, null, fs8Var.c(), 8, null);
        rq4.b(rq4Var, "Div.Render.Layout", is8Var.f(), this.c, null, fs8Var.b(), 8, null);
        rq4.b(rq4Var, "Div.Render.Draw", is8Var.e(), this.c, null, fs8Var.a(), 8, null);
    }

    public final void t() {
        this.d = false;
        this.j = null;
        this.i = null;
        this.k = null;
        e().j();
    }

    public final void u(String str) {
        this.c = str;
    }

    public final long v(long j) {
        return d() - j;
    }
}
