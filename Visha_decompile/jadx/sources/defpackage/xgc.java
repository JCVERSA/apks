package defpackage;

public final class xgc implements ja9 {
    public final vgc a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;

    public xgc(vgc vgcVar, int i, long j, long j2) {
        this.a = vgcVar;
        this.b = i;
        this.c = j;
        long j3 = (j2 - j) / ((long) vgcVar.e);
        this.d = j3;
        this.e = a(j3);
    }

    public final long a(long j) {
        return blb.B0(j * ((long) this.b), 1000000L, this.a.c);
    }

    @Override
    public long getDurationUs() {
        return this.e;
    }

    @Override
    public ja9.a getSeekPoints(long j) {
        long jQ = blb.q((((long) this.a.c) * j) / (((long) this.b) * 1000000), 0L, this.d - 1);
        long j2 = this.c + (((long) this.a.e) * jQ);
        long jA = a(jQ);
        la9 la9Var = new la9(jA, j2);
        if (jA >= j || jQ == this.d - 1) {
            return new ja9.a(la9Var);
        }
        long j3 = jQ + 1;
        return new ja9.a(la9Var, new la9(a(j3), this.c + (((long) this.a.e) * j3)));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
