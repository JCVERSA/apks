package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class j6 implements yd0, kz1 {
    private final ViewGroup a;
    private final y1 b;
    private final zr c;
    private final g6 d;
    private final ExtendedNativeAdView e;
    private final x1 f;
    private final xl1 g;
    private final aq h;
    private final zr1 i;
    private final ArrayList j;
    private final List<m6> k;
    private final long l;
    private int m;
    private boolean n;

    public final class a implements k3 {
        public a() {
        }

        @Override
        public final void a() {
            j6.this.d();
        }

        @Override
        public final void b() {
            int i = j6.this.m - 1;
            if (i == j6.this.d.c() && !j6.this.n) {
                j6.this.n = true;
                j6.this.b.b();
            }
            m6 m6Var = (m6) defpackage.i81.r0(j6.this.k, i);
            if ((m6Var != null ? m6Var.c() : null) != o6.c || m6Var.b() == null) {
                j6.this.d();
            }
        }
    }

    public j6(Context context, q61 q61Var, st stVar, ks1 ks1Var, ArrayList arrayList, b30 b30Var, ViewGroup viewGroup, y1 y1Var, zr zrVar, lr0 lr0Var, g6 g6Var, ExtendedNativeAdView extendedNativeAdView, x1 x1Var, xl1 xl1Var, aq aqVar, zr1 zr1Var) {
        y45.j(context, "context");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(stVar, "adEventListener");
        y45.j(ks1Var, "closeVerificationController");
        y45.j(viewGroup, "subAdsContainer");
        y45.j(y1Var, "adBlockCompleteListener");
        y45.j(zrVar, "contentCloseListener");
        y45.j(lr0Var, "layoutDesignsControllerCreator");
        y45.j(g6Var, "adPod");
        y45.j(extendedNativeAdView, "nativeAdView");
        y45.j(x1Var, "adBlockBinder");
        y45.j(xl1Var, "progressIncrementer");
        y45.j(aqVar, "closeTimerProgressIncrementer");
        y45.j(zr1Var, "timerViewController");
        this.a = viewGroup;
        this.b = y1Var;
        this.c = zrVar;
        this.d = g6Var;
        this.e = extendedNativeAdView;
        this.f = x1Var;
        this.g = xl1Var;
        this.h = aqVar;
        this.i = zr1Var;
        List<m6> listB = g6Var.b();
        this.k = listB;
        Iterator<T> it = listB.iterator();
        long jA = 0;
        while (it.hasNext()) {
            jA += ((m6) it.next()).a();
        }
        this.l = jA;
        this.j = lr0Var.a(context, this.e, q61Var, stVar, new a(), ks1Var, this.g, new l6(this), arrayList, b30Var, this.d, this.h);
    }

    @Override
    public final void invalidate() {
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            ((kr0) it.next()).b();
        }
        this.f.a();
    }

    private final void b() {
        this.a.setContentDescription("pageIndex: " + this.m);
    }

    @Override
    public final void a() {
        n6 n6VarB;
        int i = this.m - 1;
        if (i == this.d.c() && !this.n) {
            this.n = true;
            this.b.b();
        }
        if (this.m < this.j.size()) {
            kr0 kr0Var = (kr0) defpackage.i81.r0(this.j, i);
            if (kr0Var != null) {
                kr0Var.b();
            }
            m6 m6Var = (m6) defpackage.i81.r0(this.k, i);
            if (((m6Var == null || (n6VarB = m6Var.b()) == null) ? null : n6VarB.b()) != uz1.c) {
                d();
                return;
            }
            int size = this.j.size() - 1;
            this.m = size;
            Iterator<T> it = this.k.subList(i, size).iterator();
            long jA = 0;
            while (it.hasNext()) {
                jA += ((m6) it.next()).a();
            }
            this.g.a(jA);
            this.h.b();
            int i2 = this.m;
            this.m = i2 + 1;
            if (((kr0) this.j.get(i2)).a()) {
                b();
                this.i.a(this.e, this.l, this.g.a());
            } else if (this.m >= this.j.size()) {
                this.c.f();
            } else {
                d();
            }
        }
    }

    @Override
    public final void c() {
        ViewGroup viewGroup = this.a;
        ExtendedNativeAdView extendedNativeAdView = this.e;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        viewGroup.removeAllViews();
        viewGroup.addView(extendedNativeAdView, layoutParams);
        if (this.f.a(this.e)) {
            this.m = 1;
            this.n = false;
            kr0 kr0Var = (kr0) defpackage.i81.q0(this.j);
            if (kr0Var != null && kr0Var.a()) {
                b();
                this.i.a(this.e, this.l, this.g.a());
            } else if (this.m >= this.j.size()) {
                this.c.f();
            } else {
                d();
            }
        }
    }

    public final void d() {
        m6 m6Var = (m6) defpackage.i81.r0(this.k, this.m - 1);
        this.g.a(m6Var != null ? m6Var.a() : 0L);
        this.h.b();
        if (this.m < this.j.size()) {
            int i = this.m;
            this.m = i + 1;
            if (((kr0) this.j.get(i)).a()) {
                b();
                this.i.a(this.e, this.l, this.g.a());
            } else if (this.m >= this.j.size()) {
                this.c.f();
            } else {
                d();
            }
        }
    }
}
