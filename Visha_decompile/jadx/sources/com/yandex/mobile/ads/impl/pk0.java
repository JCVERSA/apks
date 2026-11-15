package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashSet;

public final class pk0 implements hc0, ue2, uk0, r11, cp1 {
    private final LinkedHashSet a = new LinkedHashSet();
    private final LinkedHashSet b = new LinkedHashSet();
    private final LinkedHashSet c = new LinkedHashSet();
    private final LinkedHashSet d = new LinkedHashSet();
    private final LinkedHashSet e = new LinkedHashSet();

    public final void a(hc0 hc0Var) {
        y45.j(hc0Var, "forceImpressionTrackingListener");
        this.a.add(hc0Var);
    }

    public final void b(qk0 qk0Var) {
        y45.j(qk0Var, "impressionTrackingListener");
        this.c.add(qk0Var);
    }

    public final void c(qk0 qk0Var) {
        y45.j(qk0Var, "videoImpressionTrackingListener");
        this.b.add(qk0Var);
    }

    @Override
    public final void d() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((ue2) it.next()).d();
        }
    }

    @Override
    public final void e() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((r11) it.next()).e();
        }
    }

    @Override
    public final void f() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((cp1) it.next()).f();
        }
    }

    @Override
    public final void g() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((uk0) it.next()).g();
        }
    }

    @Override
    public final void h() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((ue2) it.next()).h();
        }
    }

    public final void a(r11 r11Var) {
        y45.j(r11Var, "mobileAdsSchemeImpressionListener");
        this.e.add(r11Var);
    }

    @Override
    public final void b() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            ((r11) it.next()).b();
        }
    }

    @Override
    public final void c() {
        Iterator it = this.d.iterator();
        while (it.hasNext()) {
            ((uk0) it.next()).c();
        }
    }

    public final void a(qk0 qk0Var) {
        y45.j(qk0Var, "impressionTrackingListener");
        this.d.add(qk0Var);
    }

    @Override
    public final void a() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((hc0) it.next()).a();
        }
    }
}
