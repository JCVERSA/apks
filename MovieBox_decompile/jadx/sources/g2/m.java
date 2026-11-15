package g2;

import androidx.media3.common.r;

public abstract class m extends e {

    public final long f60649j;

    public m(androidx.media3.datasource.a aVar, w1.h hVar, r rVar, int i10, Object obj, long j10, long j11, long j12) {
        super(aVar, hVar, 1, rVar, i10, obj, j10, j11);
        androidx.media3.common.util.a.e(rVar);
        this.f60649j = j12;
    }

    public long e() {
        long j10 = this.f60649j;
        if (j10 != -1) {
            return 1 + j10;
        }
        return -1L;
    }

    public abstract boolean f();
}
