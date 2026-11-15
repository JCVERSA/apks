package androidx.media3.exoplayer.dash;

import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import f2.u;

final class e implements u {

    private final r f11149a;

    private long[] f11151c;

    private boolean f11152d;

    private z1.f f11153e;

    private boolean f11154f;

    private int f11155g;

    private final v2.c f11150b = new v2.c();

    private long f11156h = C.TIME_UNSET;

    public e(z1.f fVar, r rVar, boolean z10) {
        this.f11149a = rVar;
        this.f11153e = fVar;
        this.f11151c = fVar.f76537b;
        d(fVar, z10);
    }

    public String a() {
        return this.f11153e.a();
    }

    public void b(long j10) {
        int iD = a1.d(this.f11151c, j10, true, false);
        this.f11155g = iD;
        if (!this.f11152d || iD != this.f11151c.length) {
            j10 = C.TIME_UNSET;
        }
        this.f11156h = j10;
    }

    @Override
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i10) {
        int i11 = this.f11155g;
        boolean z10 = i11 == this.f11151c.length;
        if (z10 && !this.f11152d) {
            decoderInputBuffer.setFlags(4);
            return -4;
        }
        if ((i10 & 2) != 0 || !this.f11154f) {
            s2Var.f12258b = this.f11149a;
            this.f11154f = true;
            return -5;
        }
        if (z10) {
            return -3;
        }
        if ((i10 & 1) == 0) {
            this.f11155g = i11 + 1;
        }
        if ((i10 & 4) == 0) {
            byte[] bArrA = this.f11150b.a(this.f11153e.f76536a[i11]);
            decoderInputBuffer.b(bArrA.length);
            decoderInputBuffer.f10606c.put(bArrA);
        }
        decoderInputBuffer.f10608e = this.f11151c[i11];
        decoderInputBuffer.setFlags(1);
        return -4;
    }

    public void d(z1.f fVar, boolean z10) {
        int i10 = this.f11155g;
        long j10 = i10 == 0 ? -9223372036854775807L : this.f11151c[i10 - 1];
        this.f11152d = z10;
        this.f11153e = fVar;
        long[] jArr = fVar.f76537b;
        this.f11151c = jArr;
        long j11 = this.f11156h;
        if (j11 != C.TIME_UNSET) {
            b(j11);
        } else if (j10 != C.TIME_UNSET) {
            this.f11155g = a1.d(jArr, j10, false, false);
        }
    }

    @Override
    public boolean isReady() {
        return true;
    }

    @Override
    public int skipData(long j10) {
        int iMax = Math.max(this.f11155g, a1.d(this.f11151c, j10, true, false));
        int i10 = iMax - this.f11155g;
        this.f11155g = iMax;
        return i10;
    }

    @Override
    public void maybeThrowError() {
    }
}
