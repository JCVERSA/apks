package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.Iterator;
import java.util.WeakHashMap;

public final class wx0 {
    private final WeakHashMap<p51, Object> a = new WeakHashMap<>();

    public final void a(p51 p51Var) {
        y45.j(p51Var, "nativeAdEventController");
        this.a.put(p51Var, null);
    }

    public final void b() {
        Iterator<p51> it = this.a.keySet().iterator();
        while (it.hasNext()) {
            it.next().c();
        }
    }

    public final void c() {
        Iterator<p51> it = this.a.keySet().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
    }

    public final void d() {
        Iterator<p51> it = this.a.keySet().iterator();
        while (it.hasNext()) {
            it.next().e();
        }
    }

    public final void a() {
        Iterator<p51> it = this.a.keySet().iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    public final void a(t4 t4Var) {
        Iterator<p51> it = this.a.keySet().iterator();
        while (it.hasNext()) {
            it.next().a(t4Var);
        }
    }
}
