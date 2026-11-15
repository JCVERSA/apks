package com.iab.omid.library.bytedance2.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class c {

    private static c f32610c = new c();

    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f32611a = new ArrayList<>();

    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f32612b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f32610c;
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f32612b);
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f32611a);
    }

    public boolean d() {
        return this.f32612b.size() > 0;
    }

    public void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        this.f32611a.add(aVar);
    }

    public void b(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean zD = d();
        this.f32611a.remove(aVar);
        this.f32612b.remove(aVar);
        if (!zD || d()) {
            return;
        }
        i.c().e();
    }

    public void c(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean zD = d();
        this.f32612b.add(aVar);
        if (zD) {
            return;
        }
        i.c().d();
    }
}
