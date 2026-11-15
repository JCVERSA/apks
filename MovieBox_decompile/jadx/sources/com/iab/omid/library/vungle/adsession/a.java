package com.iab.omid.library.vungle.adsession;

public final class a {

    private final h f32937a;

    private a(h hVar) {
        this.f32937a = hVar;
    }

    public static a a(b bVar) {
        h hVar = (h) bVar;
        xe.g.d(bVar, "AdSession is null");
        xe.g.j(hVar);
        xe.g.g(hVar);
        a aVar = new a(hVar);
        hVar.k().d(aVar);
        return aVar;
    }

    public void b() {
        xe.g.g(this.f32937a);
        xe.g.i(this.f32937a);
        if (!this.f32937a.o()) {
            try {
                this.f32937a.d();
            } catch (Exception unused) {
            }
        }
        if (this.f32937a.o()) {
            this.f32937a.s();
        }
    }

    public void c() {
        xe.g.c(this.f32937a);
        xe.g.i(this.f32937a);
        this.f32937a.t();
    }
}
