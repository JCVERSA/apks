package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;

public final class n21 implements r11, s11, ze1 {
    private final ArrayList a = new ArrayList();
    private final ArrayList b = new ArrayList();
    private final ArrayList c = new ArrayList();

    public final void a(r11 r11Var) {
        y45.j(r11Var, "mobileAdsSchemeImpressionListener");
        this.a.add(r11Var);
    }

    @Override
    public final void b() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((r11) it.next()).b();
        }
    }

    @Override
    public final void c() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((ze1) it.next()).c();
        }
    }

    @Override
    public final void e() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((r11) it.next()).e();
        }
    }

    public final void a(s11 s11Var) {
        y45.j(s11Var, "mobileAdsSchemeRewardListener");
        this.b.add(s11Var);
    }

    public final void a(ze1 ze1Var) {
        y45.j(ze1Var, "onCloseButtonListener");
        this.c.add(ze1Var);
    }

    @Override
    public final void a() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((s11) it.next()).a();
        }
    }

    @Override
    public final void a(boolean z) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((ze1) it.next()).a(z);
        }
    }
}
