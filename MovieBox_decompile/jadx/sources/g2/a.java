package g2;

import androidx.media3.common.r;

public abstract class a extends m {

    public final long f60565k;

    public final long f60566l;

    private c f60567m;

    private int[] f60568n;

    public a(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i10, Object obj, long j10, long j11, long j12, long j13, long j14) {
        super(aVar, hVar, rVar, i10, obj, j10, j11, j14);
        this.f60565k = j12;
        this.f60566l = j13;
    }

    public final int g(int i10) {
        return ((int[]) androidx.media3.common.util.a.i(this.f60568n))[i10];
    }

    protected final c h() {
        return (c) androidx.media3.common.util.a.i(this.f60567m);
    }

    public void i(c cVar) {
        this.f60567m = cVar;
        this.f60568n = cVar.a();
    }
}
