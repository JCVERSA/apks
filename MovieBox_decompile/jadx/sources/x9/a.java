package x9;

import com.google.android.exoplayer2.p1;

public abstract class a extends n {

    public final long f75157k;

    public final long f75158l;

    private c f75159m;

    private int[] f75160n;

    public a(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, p1 p1Var, int i10, Object obj, long j10, long j11, long j12, long j13, long j14) {
        super(kVar, nVar, p1Var, i10, obj, j10, j11, j14);
        this.f75157k = j12;
        this.f75158l = j13;
    }

    public final int g(int i10) {
        return ((int[]) com.google.android.exoplayer2.util.a.i(this.f75160n))[i10];
    }

    protected final c h() {
        return (c) com.google.android.exoplayer2.util.a.i(this.f75159m);
    }

    public void i(c cVar) {
        this.f75159m = cVar;
        this.f75160n = cVar.a();
    }
}
