package x9;

import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

public abstract class l extends f {

    private byte[] f75229j;

    private volatile boolean f75230k;

    public l(com.google.android.exoplayer2.upstream.k kVar, com.google.android.exoplayer2.upstream.n nVar, int i10, p1 p1Var, int i11, Object obj, byte[] bArr) {
        super(kVar, nVar, i10, p1Var, i11, obj, C.TIME_UNSET, C.TIME_UNSET);
        this.f75229j = bArr == null ? p0.f26859f : bArr;
    }

    private void g(int i10) {
        byte[] bArr = this.f75229j;
        if (bArr.length < i10 + 16384) {
            this.f75229j = Arrays.copyOf(bArr, bArr.length + 16384);
        }
    }

    @Override
    public final void cancelLoad() {
        this.f75230k = true;
    }

    protected abstract void e(byte[] bArr, int i10);

    public byte[] f() {
        return this.f75229j;
    }

    @Override
    public final void load() {
        try {
            this.f75192i.a(this.f75185b);
            int i10 = 0;
            int i11 = 0;
            while (i10 != -1 && !this.f75230k) {
                g(i11);
                i10 = this.f75192i.read(this.f75229j, i11, 16384);
                if (i10 != -1) {
                    i11 += i10;
                }
            }
            if (!this.f75230k) {
                e(this.f75229j, i11);
            }
        } finally {
            com.google.android.exoplayer2.upstream.m.a(this.f75192i);
        }
    }
}
