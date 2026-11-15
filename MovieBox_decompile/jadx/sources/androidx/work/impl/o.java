package androidx.work.impl;

public class o implements androidx.work.l {

    private final androidx.p009lifecycle.b0 f15309c = new androidx.p009lifecycle.b0();

    private final androidx.work.impl.utils.futures.a f15310d = androidx.work.impl.utils.futures.a.x();

    public o() {
        a(androidx.work.l.f15407b);
    }

    public void a(androidx.work.l.b bVar) {
        this.f15309c.n(bVar);
        if (bVar instanceof androidx.work.l.b.c) {
            this.f15310d.t((androidx.work.l.b.c) bVar);
        } else if (bVar instanceof androidx.work.l.b.a) {
            this.f15310d.u(((androidx.work.l.b.a) bVar).a());
        }
    }
}
