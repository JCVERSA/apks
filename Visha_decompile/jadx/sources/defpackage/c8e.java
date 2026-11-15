package defpackage;

public final class c8e implements kae {
    public final f8e a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;

    public c8e(f8e f8eVar, long j, long j2, long j3, long j4, long j5, long j6) {
        this.a = f8eVar;
        this.b = j;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
    }

    @Override
    public final z9e a(long j) {
        lae laeVar = new lae(j, e8e.f(this.a.b(j), 0L, this.c, this.d, this.e, this.f));
        return new z9e(laeVar, laeVar);
    }

    public final long g(long j) {
        return this.a.b(j);
    }

    @Override
    public final long zza() {
        return this.b;
    }

    @Override
    public final boolean zzh() {
        return true;
    }
}
