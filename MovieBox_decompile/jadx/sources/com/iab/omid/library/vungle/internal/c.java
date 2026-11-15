package com.iab.omid.library.vungle.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class c {

    private static c f32974c = new c();

    private final ArrayList f32975a = new ArrayList();

    private final ArrayList f32976b = new ArrayList();

    private c() {
    }

    public static c e() {
        return f32974c;
    }

    public Collection a() {
        return Collections.unmodifiableCollection(this.f32976b);
    }

    public void b(com.iab.omid.library.vungle.adsession.h hVar) {
        this.f32975a.add(hVar);
    }

    public Collection c() {
        return Collections.unmodifiableCollection(this.f32975a);
    }

    public void d(com.iab.omid.library.vungle.adsession.h hVar) {
        boolean zG = g();
        this.f32975a.remove(hVar);
        this.f32976b.remove(hVar);
        if (!zG || g()) {
            return;
        }
        i.d().f();
    }

    public void f(com.iab.omid.library.vungle.adsession.h hVar) {
        boolean zG = g();
        this.f32976b.add(hVar);
        if (zG) {
            return;
        }
        i.d().e();
    }

    public boolean g() {
        return this.f32976b.size() > 0;
    }
}
