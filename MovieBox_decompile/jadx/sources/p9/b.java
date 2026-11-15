package p9;

import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.t;
import i9.b0;
import i9.c0;

final class b implements g {

    private final long f69077a;

    private final t f69078b;

    private final t f69079c;

    private long f69080d;

    public b(long j10, long j11, long j12) {
        this.f69080d = j10;
        this.f69077a = j12;
        t tVar = new t();
        this.f69078b = tVar;
        t tVar2 = new t();
        this.f69079c = tVar2;
        tVar.a(0L);
        tVar2.a(j11);
    }

    @Override
    public long a() {
        return this.f69077a;
    }

    public boolean b(long j10) {
        t tVar = this.f69078b;
        return j10 - tVar.b(tVar.c() - 1) < 100000;
    }

    public void c(long j10, long j11) {
        if (b(j10)) {
            return;
        }
        this.f69078b.a(j10);
        this.f69079c.a(j11);
    }

    void d(long j10) {
        this.f69080d = j10;
    }

    @Override
    public long getDurationUs() {
        return this.f69080d;
    }

    @Override
    public b0.a getSeekPoints(long j10) {
        int iF = p0.f(this.f69078b, j10, true, true);
        c0 c0Var = new c0(this.f69078b.b(iF), this.f69079c.b(iF));
        if (c0Var.f61890a == j10 || iF == this.f69078b.c() - 1) {
            return new b0.a(c0Var);
        }
        int i10 = iF + 1;
        return new b0.a(c0Var, new c0(this.f69078b.b(i10), this.f69079c.b(i10)));
    }

    @Override
    public long getTimeUs(long j10) {
        return this.f69078b.b(p0.f(this.f69079c, j10, true, true));
    }

    @Override
    public boolean isSeekable() {
        return true;
    }
}
