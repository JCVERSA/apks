package com.iab.omid.library.hisavana.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class c {

    private static c f32740c = new c();

    private final ArrayList f32741a = new ArrayList();

    private final ArrayList f32742b = new ArrayList();

    private c() {
    }

    public static c e() {
        return f32740c;
    }

    public Collection a() {
        return Collections.unmodifiableCollection(this.f32742b);
    }

    public void b(com.iab.omid.library.hisavana.adsession.h hVar) {
        this.f32741a.add(hVar);
    }

    public Collection c() {
        return Collections.unmodifiableCollection(this.f32741a);
    }

    public void d(com.iab.omid.library.hisavana.adsession.h hVar) {
        boolean zG = g();
        this.f32741a.remove(hVar);
        this.f32742b.remove(hVar);
        if (!zG || g()) {
            return;
        }
        i.d().f();
    }

    public void f(com.iab.omid.library.hisavana.adsession.h hVar) {
        boolean zG = g();
        this.f32742b.add(hVar);
        if (zG) {
            return;
        }
        i.d().e();
    }

    public boolean g() {
        return this.f32742b.size() > 0;
    }
}
