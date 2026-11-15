package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import androidx.viewpager2.widget.ViewPager2;
import defpackage.af5;
import defpackage.y45;
import defpackage.zfb;

public final class g31 {
    static final af5[] g = {ta.a(g31.class, "viewPager", "getViewPager()Landroidx/viewpager2/widget/ViewPager2;", 0)};
    private final r31 a;
    private final k31 b;
    private final kt0 c;
    private final go1 d;
    private jt0 e;
    private boolean f;

    public g31(ViewPager2 viewPager2, r31 r31Var, k31 k31Var, kt0 kt0Var) {
        y45.j(viewPager2, "viewPager");
        y45.j(r31Var, "multiBannerSwiper");
        y45.j(k31Var, "multiBannerEventTracker");
        y45.j(kt0Var, "jobSchedulerFactory");
        this.a = r31Var;
        this.b = k31Var;
        this.c = kt0Var;
        this.d = ho1.a(viewPager2);
        this.f = true;
    }

    public final void a() {
        b();
        this.f = false;
    }

    public final void b() {
        jt0 jt0Var = this.e;
        if (jt0Var != null) {
            jt0Var.a();
        }
        this.e = null;
    }

    public final void a(long j) {
        zfb zfbVar;
        if (j <= 0 || !this.f) {
            return;
        }
        b();
        ViewPager2 viewPager2 = (ViewPager2) this.d.getValue(this, g[0]);
        if (viewPager2 != null) {
            h31 h31Var = new h31(viewPager2, this.a, this.b);
            this.c.getClass();
            jt0 jt0Var = new jt0(new Handler(Looper.getMainLooper()));
            this.e = jt0Var;
            jt0Var.a(j, h31Var);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            b();
            this.f = false;
        }
    }
}
