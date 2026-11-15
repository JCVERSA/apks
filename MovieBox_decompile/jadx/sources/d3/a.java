package d3;

import k2.i0;

final class a extends k2.i implements g {

    private final long f58845h;

    private final int f58846i;

    private final int f58847j;

    private final boolean f58848k;

    private final long f58849l;

    public a(long j10, long j11, i0.a aVar, boolean z10) {
        this(j10, j11, aVar.f63618f, aVar.f63615c, z10);
    }

    @Override
    public long a() {
        return this.f58849l;
    }

    public a e(long j10) {
        return new a(j10, this.f58845h, this.f58846i, this.f58847j, this.f58848k);
    }

    @Override
    public int g() {
        return this.f58846i;
    }

    @Override
    public long getTimeUs(long j10) {
        return c(j10);
    }

    public a(long j10, long j11, int i10, int i11, boolean z10) {
        super(j10, j11, i10, i11, z10);
        this.f58845h = j11;
        this.f58846i = i10;
        this.f58847j = i11;
        this.f58848k = z10;
        this.f58849l = j10 == -1 ? -1L : j10;
    }
}
