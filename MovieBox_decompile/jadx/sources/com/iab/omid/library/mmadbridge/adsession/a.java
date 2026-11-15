package com.iab.omid.library.mmadbridge.adsession;

public final class a {

    private final h f32817a;

    private a(h hVar) {
        this.f32817a = hVar;
    }

    public static a a(b bVar) {
        h hVar = (h) bVar;
        re.g.d(bVar, "AdSession is null");
        re.g.l(hVar);
        re.g.g(hVar);
        a aVar = new a(hVar);
        hVar.t().d(aVar);
        return aVar;
    }

    public void b() {
        re.g.g(this.f32817a);
        re.g.j(this.f32817a);
        if (!this.f32817a.q()) {
            try {
                this.f32817a.g();
            } catch (Exception unused) {
            }
        }
        if (this.f32817a.q()) {
            this.f32817a.x();
        }
    }

    public void c() {
        re.g.c(this.f32817a);
        re.g.j(this.f32817a);
        this.f32817a.y();
    }

    public void d(com.iab.omid.library.mmadbridge.adsession.media.b bVar) {
        re.g.d(bVar, "VastProperties is null");
        re.g.c(this.f32817a);
        re.g.j(this.f32817a);
        this.f32817a.k(bVar.a());
    }
}
