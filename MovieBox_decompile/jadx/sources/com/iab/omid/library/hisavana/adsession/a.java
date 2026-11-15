package com.iab.omid.library.hisavana.adsession;

public final class a {

    private final h f32703a;

    private a(h hVar) {
        this.f32703a = hVar;
    }

    public static a a(b bVar) {
        h hVar = (h) bVar;
        le.g.d(bVar, "AdSession is null");
        le.g.j(hVar);
        le.g.g(hVar);
        a aVar = new a(hVar);
        hVar.l().d(aVar);
        return aVar;
    }

    public void b() {
        le.g.g(this.f32703a);
        le.g.i(this.f32703a);
        if (!this.f32703a.p()) {
            try {
                this.f32703a.e();
            } catch (Exception unused) {
            }
        }
        if (this.f32703a.p()) {
            this.f32703a.t();
        }
    }

    public void c() {
        le.g.c(this.f32703a);
        le.g.i(this.f32703a);
        this.f32703a.u();
    }
}
