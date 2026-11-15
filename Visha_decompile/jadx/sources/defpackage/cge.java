package defpackage;

public final class cge implements hge {
    public final n9e a;
    public final m9e b;
    public long c = -1;
    public long d = -1;

    public cge(n9e n9eVar, m9e m9eVar) {
        this.a = n9eVar;
        this.b = m9eVar;
    }

    @Override
    public final void a(long j) {
        long[] jArr = this.b.a;
        this.d = jArr[kfh.y(jArr, j, true, true)];
    }

    @Override
    public final long b(d9e d9eVar) {
        long j = this.d;
        if (j < 0) {
            return -1L;
        }
        this.d = -1L;
        return -(j + 2);
    }

    public final void c(long j) {
        this.c = j;
    }

    @Override
    public final kae zze() {
        n7g.f(this.c != -1);
        return new l9e(this.a, this.c);
    }
}
