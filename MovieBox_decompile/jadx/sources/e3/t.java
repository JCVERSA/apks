package e3;

public final class t {

    public final int f59402a;

    public final int f59403b;

    public final long f59404c;

    public final long f59405d;

    public final long f59406e;

    public final long f59407f;

    public final androidx.media3.common.r f59408g;

    public final int f59409h;

    public final long[] f59410i;

    public final long[] f59411j;

    public final int f59412k;

    private final u[] f59413l;

    public t(int i10, int i11, long j10, long j11, long j12, long j13, androidx.media3.common.r rVar, int i12, u[] uVarArr, int i13, long[] jArr, long[] jArr2) {
        this.f59402a = i10;
        this.f59403b = i11;
        this.f59404c = j10;
        this.f59405d = j11;
        this.f59406e = j12;
        this.f59407f = j13;
        this.f59408g = rVar;
        this.f59409h = i12;
        this.f59413l = uVarArr;
        this.f59412k = i13;
        this.f59410i = jArr;
        this.f59411j = jArr2;
    }

    public t a(androidx.media3.common.r rVar) {
        return new t(this.f59402a, this.f59403b, this.f59404c, this.f59405d, this.f59406e, this.f59407f, rVar, this.f59409h, this.f59413l, this.f59412k, this.f59410i, this.f59411j);
    }

    public u b(int i10) {
        u[] uVarArr = this.f59413l;
        if (uVarArr == null) {
            return null;
        }
        return uVarArr[i10];
    }
}
