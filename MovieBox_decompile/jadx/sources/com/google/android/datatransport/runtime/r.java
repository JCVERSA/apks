package com.google.android.datatransport.runtime;

final class r implements t8.h {

    private final o f23751a;

    private final String f23752b;

    private final t8.c f23753c;

    private final t8.g f23754d;

    private final s f23755e;

    r(o oVar, String str, t8.c cVar, t8.g gVar, s sVar) {
        this.f23751a = oVar;
        this.f23752b = str;
        this.f23753c = cVar;
        this.f23754d = gVar;
        this.f23755e = sVar;
    }

    @Override
    public void a(t8.d dVar) {
        b(dVar, new t8.j() {
            @Override
            public final void a(Exception exc) {
                r.e(exc);
            }
        });
    }

    @Override
    public void b(t8.d dVar, t8.j jVar) {
        this.f23755e.a(n.a().e(this.f23751a).c(dVar).f(this.f23752b).d(this.f23754d).b(this.f23753c).a(), jVar);
    }

    o d() {
        return this.f23751a;
    }

    public static void e(Exception exc) {
    }
}
