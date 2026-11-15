package com.iab.omid.library.mmadbridge.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class c {

    private static c f32859c = new c();

    private final ArrayList f32860a = new ArrayList();

    private final ArrayList f32861b = new ArrayList();

    private c() {
    }

    public static c e() {
        return f32859c;
    }

    public Collection a() {
        return Collections.unmodifiableCollection(this.f32861b);
    }

    public void b(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        this.f32860a.add(hVar);
    }

    public Collection c() {
        return Collections.unmodifiableCollection(this.f32860a);
    }

    public void d(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        boolean zG = g();
        this.f32860a.remove(hVar);
        this.f32861b.remove(hVar);
        if (!zG || g()) {
            return;
        }
        i.d().f();
    }

    public void f(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        boolean zG = g();
        this.f32861b.add(hVar);
        if (zG) {
            return;
        }
        i.d().e();
    }

    public boolean g() {
        return this.f32861b.size() > 0;
    }
}
