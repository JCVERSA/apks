package defpackage;

public final class nke {
    public final lje a;
    public final fch b;
    public final p3h c = new p3h(new byte[64], 64);
    public boolean d;
    public boolean e;
    public boolean f;

    public nke(lje ljeVar, fch fchVar) {
        this.a = ljeVar;
        this.b = fchVar;
    }

    public final void a(u4h u4hVar) {
        long jB;
        p3h p3hVar = this.c;
        u4hVar.h(p3hVar.a, 0, 3);
        p3hVar.l(0);
        p3hVar.n(8);
        this.d = p3hVar.p();
        this.e = p3hVar.p();
        p3hVar.n(6);
        u4hVar.h(p3hVar.a, 0, p3hVar.d(8));
        p3hVar.l(0);
        if (this.d) {
            p3hVar.n(4);
            long jD = p3hVar.d(3);
            p3hVar.n(1);
            int iD = p3hVar.d(15) << 15;
            p3hVar.n(1);
            long jD2 = p3hVar.d(15);
            p3hVar.n(1);
            if (!this.f && this.e) {
                p3hVar.n(4);
                long jD3 = ((long) p3hVar.d(3)) << 30;
                p3hVar.n(1);
                int iD2 = p3hVar.d(15) << 15;
                p3hVar.n(1);
                long jD4 = p3hVar.d(15);
                p3hVar.n(1);
                this.b.b(jD3 | ((long) iD2) | jD4);
                this.f = true;
            }
            jB = this.b.b((jD << 30) | ((long) iD) | jD2);
        } else {
            jB = 0;
        }
        lje ljeVar = this.a;
        ljeVar.b(jB, 4);
        ljeVar.a(u4hVar);
        ljeVar.zzc(false);
    }

    public final void b() {
        this.f = false;
        this.a.zze();
    }
}
